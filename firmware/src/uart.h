#ifndef __UART_H__
#define __UART_H__

#define UART_RINGBUFFER_SIZE_RX 256
#define UART_RINGBUFFER_MASK_RX (UART_RINGBUFFER_SIZE_RX-1)

#define UART_RINGBUFFER_SIZE_TX 256
#define UART_RINGBUFFER_MASK_TX (UART_RINGBUFFER_SIZE_TX-1)

void uart_print (char *);
void uart_write (char);
int uart_read_nonblock (void);
char uart_read (void);
void uart_init (void);

#endif /* __UART_H__ */

