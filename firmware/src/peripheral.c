#include "cmsis_device.h"
#include "pid_def.h"

void periph_init (void)
{

	RCC->APB2ENR |= (RCC_APB2ENR_IOPAEN | RCC_APB2ENR_IOPBEN | RCC_APB2ENR_AFIOEN); 	// GPIOA, GPIOB, ALTFUNC
	RCC->APB1ENR |= (RCC_APB1ENR_TIM2EN | RCC_APB1ENR_TIM3EN | RCC_APB1ENR_TIM4EN);		// TIM2, TIM3, TIM4	
	
/* ------------------------------------------------------------------------------------------------------ */
/* -- GPIO - configuration ------------------------------------------------------------------------------ */
/* ------------------------------------------------------------------------------------------------------ */

	/*
	 * 0xE - AF OpenDrain 2MHz
	 * 0xA - AF push/pull 2MHz
	 * 0x4 - Input floating
	 * 0x8 - Input pull-up/pull-down
	 *
	 * PA0 - TIM2CH1 - QuadA; PA1 - TIM2CH2 - QuadB
	 * PA6 - TIM3CH1 - QuadA; PA7 - TIM3CH2 - QuadB
	 *
	 * PA8 - Dir, PA9 - Step
	 *
	 */
	 
	GPIOA->CRL  = 0x88444488;								// PA0, PA1, PA6, PA7 - Input pull-up mode
	GPIOA->BSRR = 0x000000C3;								// Set pull-up for above pins

	/* PB6  - TIM4CH1, PB7  - TIM4CH2,
	 * PB8  - TIM4CH3, PB9  - TIM4CH4 - PWM out */	 
	GPIOB->CRL = 0xAA444444;								// PB6, PB7 - AF push/pull 2MHz output mode
	GPIOB->CRH = 0x444444AA;								// PB8, PB9 - AF push/pull 2MHz output mode

		
/* ------------------------------------------------------------------------------------------------------ */
/* -- TIM2, TIM3 - configuration (Encoders) ------------------------------------------------------------- */
/* ------------------------------------------------------------------------------------------------------ */

	TIM2->SMCR	|= TIM_SMCR_SMS_0   | TIM_SMCR_SMS_1;		// Rising level on both TI1 and TI2
	TIM2->CCMR1 |= TIM_CCMR1_CC1S_0 | TIM_CCMR1_CC2S_0;		// CC1 at TI1, CC2 at TI2
	TIM2->ARR	 = 0xffff;									// Max counter value is 65535
	TIM2->CR1	|= TIM_CR1_CEN;								// Enable timer TIM2

	TIM3->SMCR	|= TIM_SMCR_SMS_0   | TIM_SMCR_SMS_1;
	TIM3->CCMR1 |= TIM_CCMR1_CC1S_0 | TIM_CCMR1_CC2S_0;
	TIM3->ARR	 = 0xffff;
	TIM3->CR1	|= TIM_CR1_CEN;
	
/* ------------------------------------------------------------------------------------------------------ */
/* -- GPIO (Step/Dir) ----------------------------------------------------------------------------------- */
/* ------------------------------------------------------------------------------------------------------ */

	/* PB15 - Step 0 / PB14 - Dir  0
	 * PB13 - Step 1 / PB12 - Dir  1 */
	GPIOB->CRH &= 0x0000FFFF;
	GPIOB->CRH |= 0x88880000;								// PB15-12 -- Input pull-down
	GPIOB->ODR &= 0xFFFF0FFF;								// Set pull-down
	
	
	AFIO->EXTICR[3] = 0x1010;								// Set PB15 & PB13 as EXTI
	EXTI->IMR	= 0xA000;									// Unmask PB15 & PB13 interrupts
	EXTI->RTSR	= 0xA000;									// Rising edge trigger
	
	NVIC_EnableIRQ (EXTI15_10_IRQn);	

/* ----------------------------------------------------------------------------------------------------- */
/* -- TIM4 - configuration (PWM) ----------------------------------------------------------------------- */
/* ----------------------------------------------------------------------------------------------------- */

	TIM4->CCMR1 |= (TIM_CCMR1_OC1PE  | TIM_CCMR1_OC2PE  |		// Preload enable for both CH1 and CH2
	                TIM_CCMR1_OC1M_2 | TIM_CCMR1_OC1M_1 |		// PWM mode 1 - CH1
	                TIM_CCMR1_OC2M_2 | TIM_CCMR1_OC2M_1 );		// PWM mode 1 - CH2
	                
	TIM4->CCMR2 |= (TIM_CCMR2_OC3PE  | TIM_CCMR2_OC4PE  |		// Preload enable for both CH1 and CH2
	                TIM_CCMR2_OC3M_2 | TIM_CCMR2_OC3M_1 |		// PWM mode 1 - CH1
	                TIM_CCMR2_OC4M_2 | TIM_CCMR2_OC4M_1 );		// PWM mode 1 - CH2

	TIM4->PSC   = (TIM4_CLK / (PWM_FREQ * PWM_MAX_VAL)) * 2;	// Set PWM frequency
	TIM4->ARR   = PWM_MAX_VAL;
	TIM4->CCER |= ( TIM_CCER_CC1E | TIM_CCER_CC2E |
	                TIM_CCER_CC3E | TIM_CCER_CC4E );			// TIM4 CH1-4 output enable

	TIM4->CR1	= TIM_CR1_CEN | TIM_CR1_ARPE;
	
/* ----------------------------------------------------------------------------------------------------- */
/* -- SysTick config ----------------------------------------------------------------------------------- */
/* ----------------------------------------------------------------------------------------------------- */

	SysTick_Config (72000);			// SysTick interrupt will occur every 1ms
			
}


