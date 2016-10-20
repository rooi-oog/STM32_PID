#include "cmsis_device.h"
#include "uart.h"
#include "pid.h"
#include "pid_def.h"
#include "eeprom.h"

#include <stdlib.h>
#include <stdio.h>

extern void periph_init (void);

/* Feedback memory allocation size */
#define BUF_SIZE	1000

/* Array of PID struct */
static arm_pid_t pid [2];

/* Array to strore the actual motor position */
static int32_t feedback_buf [BUF_SIZE];

/* Current feedback array index */
static int16_t feedback_buf_index = BUF_SIZE;

/* Data source to store into the buffer: velocity || position */
static int32_t *feedback_src = NULL;

/* Velocity compare counter */
static uint8_t resampler_250Hz;

/* Step 0 counter */
static int32_t step_0_cnt;

/* Step 1 counter */
static int32_t step_1_cnt;

/* ------------------------------------------------------------------------------------ */
/* ------------------------------------------------------------------------------------ */

/* Step/Dir interrupt handler */
void EXTI15_10_IRQHandler (void) 
{
	register uint8_t dir;
	
	/* Step 0 */ 
	if (EXTI->PR & (1 << STEP_0_PIN))
	{
		/* Clear interrupt pending bit */
		EXTI->PR |= (1 << STEP_0_PIN);
		/* Check direction */
		dir = (GPIOB->IDR & (1 << DIR_0_PIN)) == 0;
		/* Calc position according to direction */
		step_0_cnt += dir - !dir;
		/* Set new point to PID */
		pid_set_point (&pid [0], step_0_cnt);
	}
	
	/* Step 1 */	
	if (EXTI->PR & (1 << STEP_1_PIN))
	{
		EXTI->PR |= (1 << STEP_1_PIN);
		dir = (GPIOB->IDR & (1 << DIR_1_PIN)) == 0;
		step_1_cnt += dir - !dir;
		pid_set_point (&pid [1], step_1_cnt);
	}
}

/* PID update timer */
void SysTick_Handler (void)
{	
	/* Storing feedback for transmitting to PC */
	if (feedback_buf_index < BUF_SIZE)
		feedback_buf [feedback_buf_index++] = *feedback_src; // Store either velocity or position

	/* Velocity sampling signal occurs every 4th tick */
	resampler_250Hz = (resampler_250Hz + 1) & 0x03;

	/* Calc pid functions */		
	pid_update (&pid [0], resampler_250Hz == 0x03);	
	pid_update (&pid [1], resampler_250Hz == 0x03);
}

/* ------------------------------------------------------------------------------------ */
/* ------------------------------------------------------------------------------------ */

/* Host (PC) command handler */
void check_uart_cmd (void)
{
	static char cmd [64];							// Array to store command from host through uart
	static int8_t rx_produce = 0;
	
	volatile int16_t i, j;
	uint8_t mode;						
	
	if (uart_read_nonblock ())						// Check if a char exist in rx_buffer
	{
		char buf = uart_read ();					// Read that char from rx_buffer
		
		if (buf == '\r' || buf == '\n')				// If character either "return carriage" 
													// or "line feed" then command is complete
		{
			cmd [rx_produce] = 0;					// Set last character value to terminate string
			
			switch (cmd [0])
			{
			
			/* Load/Store from/to flash memory */
			case 'S':				
				if (cmd [1] == 's')
					flash_store_from_host (atoi (&cmd [2]), &pid [0].pid);
				else				
					flash_load_to_host (atoi (&cmd [2]));
				break;				
				
			/* Return current motor position */
			case 'L':								
				sprintf (cmd, "%ld\n", pid [0].feedback);
				uart_print (cmd);
				break;
			
			/* Return whether feedback buffer is full */
			case 'F':								
				sprintf (cmd, "%d\n", feedback_buf_index);
				uart_print (cmd);
				break;
			
			/* Transmit feedback buffer */
			case 'G':		
				for (i = 0; i < BUF_SIZE; i++) 
				{
					sprintf (cmd, "%ld\n", feedback_buf [i]);
					uart_print (cmd);						
					for (j = 0; j < 5000; j++);		// TODO: think how to remove 
													// this hack (buffer overflow protection)
				}
				break;
				
			/* Set new servo mode */
			case 'M':
				mode = atoi (&cmd [1]);
				feedback_src = mode == POSITION ? &pid [0].feedback : &pid [0].velocity;
				pid_set_mode (pid, mode);
				break;
			
			/* Set sub-command (PWM, TORQUE, VELOCITY) */
			case 'C':
				pid_set_sub_cmd (pid, atoi (&cmd [1]));
				feedback_buf_index = 0;
				break;
			
			/* Jump to position */
			case 'J':								
				feedback_buf_index = 0;				// Start filling feedback buffer
				pid_set_point (&pid [0], atoi (&cmd [1]));
				break;
			
			/* Set PID parameters */
			case 'P':								
				pid_set_parameters (&pid [0], atoi (&cmd [2]), cmd [1] - 0x30);					
				break;
				
			/* Reset PID */
			case 'R':
				__disable_irq ();
				step_0_cnt = 0;
				step_1_cnt = 0;			
				pid_reset (&pid [0]);
				__enable_irq (); 
				break;
			}
			
			rx_produce = 0;
		}
		/* Add next char to the string */
		else 
		{
			cmd [rx_produce] = buf;
			rx_produce = (rx_produce + 1) & 63;		// Ringbuffer				
		}
	}
}

/* ------------------------------------------------------------------------------------ */
/* ------------------------------------------------------------------------------------ */

void main (void)
{	
	
	/* Unblocking flash memory for write by software */
	FLASH->KEYR = 0x45670123;
	FLASH->KEYR = 0xCDEF89AB;

	/* Peripheral initialization */
	periph_init ();
	
	/* UART initialization */
	uart_init ();
	
	/* PID 0 initialization */
	pid_init (	&pid [0],				// Memory pointer to arm_pid_t struct 
				PWM_MAX_VAL,			// Maximum PWM value				
				(uint32_t *) &PWM1_P,	// Memory pointer to TIMx->CCRx register (channel 1)
				(uint32_t *) &PWM1_N,	// Memory pointer to TIMx->CCRx register (channel 2)
				(uint32_t *) &ENC_0		// Memory pointer to TIMx->CNT register	 (encoder counter)
	);

	/* PID 1 initialization */
	pid_init (&pid [1], PWM_MAX_VAL, 
		(uint32_t *) &PWM2_P, (uint32_t *) &PWM2_N, (uint32_t *) &ENC_1);	

	/* Load PID 0 gains from eeprom */
	memcpy (&pid [0].pid, &pid_eeprom [0], sizeof (arm_pid_instance_t));
	
	/* Load PID 1 gains from eeprom */
	memcpy (&pid [1].pid, &pid_eeprom [1], sizeof (arm_pid_instance_t));

	/* Global interrupt enable */
	__enable_irq ();
		
	/* Infinitie loop */
	for (;;)
	{
		check_uart_cmd ();
	}
}

