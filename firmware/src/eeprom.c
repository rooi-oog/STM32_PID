#include "cmsis_device.h"
#include "eeprom.h"
#include "uart.h"

static void flash_erase (unsigned int);
static void flash_write (unsigned char*, unsigned int, unsigned int);

// MUST be 32 cells as it takes full flash page (1Kb)
__attribute__ ((section(".eeprom"), used)) const arm_pid_instance_t pid_eeprom [32] =
{{160, 98304, 53084, 1835, 222822, 0, 0}, 
 {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, 
 {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, 
 {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, 
 {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, 
 {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, 
 {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, 
 {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, 
 {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}
};

void flash_load_to_host (uint8_t cell)
{
	char str [256];
	snprintf (str, 256, "%ld, %ld, %ld, %ld, %ld, %ld\n", 
		pid_eeprom [cell].VL, pid_eeprom [cell].Kf, 
		pid_eeprom [cell].Kp, pid_eeprom [cell].Ki, 
		pid_eeprom [cell].Kd, pid_eeprom [cell].Kg);
	uart_print (str);
}

void flash_store_from_host (uint8_t cell, arm_pid_instance_t *pid)
{	
	arm_pid_instance_t epid [CELL_COUNT + 1];
	
	memcpy (epid, pid_eeprom, sizeof (arm_pid_instance_t) * CELL_COUNT);
	memcpy (&epid [cell], pid, sizeof (arm_pid_instance_t));
		
	flash_erase ((unsigned int) &pid_eeprom [0]);
	flash_write ((unsigned char *) &epid[0], (unsigned int) &pid_eeprom [0], sizeof (arm_pid_instance_t) * (CELL_COUNT + 1));
}

static void flash_erase (unsigned int pageAddress) 
{
	while (FLASH->SR & FLASH_SR_BSY);
	if (FLASH->SR & FLASH_SR_EOP) {
		FLASH->SR = FLASH_SR_EOP;
	}

	FLASH->CR |= FLASH_CR_PER;
	FLASH->AR = pageAddress;
	FLASH->CR |= FLASH_CR_STRT;
	while (!(FLASH->SR & FLASH_SR_EOP));
	FLASH->SR = FLASH_SR_EOP;
	FLASH->CR &= ~FLASH_CR_PER;
}

// data - pointer to data
// address - address in flash memory 
// count - write byte count; should be a multiple of 2
static void flash_write (unsigned char* data, unsigned int address, unsigned int count) 
{
	unsigned int i;

	while (FLASH->SR & FLASH_SR_BSY);
	if (FLASH->SR & FLASH_SR_EOP) 
	{
		FLASH->SR = FLASH_SR_EOP;
	}

	FLASH->CR |= FLASH_CR_PG;

	for (i = 0; i < count; i += 2) 
	{
		*(volatile unsigned short*) (address + i) = (((unsigned short) data[i + 1]) << 8) + data[i];
		while (!(FLASH->SR & FLASH_SR_EOP));
		FLASH->SR = FLASH_SR_EOP;
	}

	FLASH->CR &= ~(FLASH_CR_PG);
}
