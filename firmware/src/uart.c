#include "cmsis_device.h"
#include "uart.h"

static char rx_buf [UART_RINGBUFFER_SIZE_RX];
static volatile unsigned int rx_produce;
static volatile unsigned int rx_consume;

static char tx_buf [UART_RINGBUFFER_SIZE_TX];
static unsigned int tx_produce;
static unsigned int tx_consume;
static volatile int tx_cts;

void USART2_IRQHandler (void)
{
	if (USART2->SR & USART_SR_TC) {                                     // Check interrupt source
		USART2->SR &= ~USART_SR_TC;                                     // Clear pending bit
		if (tx_produce != tx_consume) {
			USART2->DR = (uint8_t) tx_buf [tx_consume];                 // Send byte through UART
			tx_consume = (tx_consume + 1) & UART_RINGBUFFER_MASK_TX;
		} else
			tx_cts = 1;
	}
	
	if (USART2->SR & USART_SR_RXNE) {
		USART2->SR &= ~USART_SR_RXNE;
		rx_buf[rx_produce] = (uint8_t) USART2->DR & 0xff;               // Receive byte from UART
		rx_produce = (rx_produce + 1) & UART_RINGBUFFER_MASK_RX;
	}
}

/* Do not use in interrupt handlers! */
char uart_read (void)
{
	char c;

	while (rx_consume == rx_produce);
	c = rx_buf [rx_consume];
	rx_consume = (rx_consume + 1) & UART_RINGBUFFER_MASK_RX;
	return c;
}

int uart_read_nonblock (void)
{
	return (rx_consume != rx_produce);
}

void uart_write (char c)
{
	if (tx_cts) {
		tx_cts = 0;
		USART2->DR = (uint8_t) c;
	}
	else {		
		tx_buf [tx_produce] = c;
		tx_produce = (tx_produce + 1) & UART_RINGBUFFER_MASK_TX;
	}
}

void uart_print (char *msg)
{
	while (*msg != 0) uart_write (*msg++);
}

void uart_init ()
{
	RCC->APB2ENR |= RCC_APB2ENR_IOPAEN | RCC_APB2ENR_AFIOEN;
	RCC->APB1ENR |= RCC_APB1ENR_USART2EN;
	
/*	PA2 - UartTx, PA3 - UartRx */
	GPIOA->CRL	&= 0xFFFF00FF; 
	GPIOA->CRL  |= 0x00008A00;
	GPIOA->BSRR	 = 0x12;									// pull up PA2 & PA3 
	
	const uint32_t baudrate = 115200;//3000000;//921600;
	const uint32_t integer  = ((25 * 36000000) / (4 * baudrate));
	const uint32_t fract    = ((((integer * 16) + 50) / 100)) & ((uint8_t) 0x0F);

	USART2->BRR = ((integer / 100) << 4) | fract;
	USART2->CR1 = USART_CR1_UE | USART_CR1_RE   |
				  USART_CR1_TE | USART_CR1_TCIE |
				  USART_CR1_RXNEIE;							// Enable USART2, Transmit complete IRQ, Received byte IRQ
				  
	NVIC_EnableIRQ (USART2_IRQn);							// USART2 interrupt enable	
}
