#ifndef __PID_EEPROM_H__
#define __PID_EEPROM_H__

#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include "pid.h"

#define CELL_COUNT	8

extern const arm_pid_instance_t pid_eeprom [32];

void flash_load_to_host (uint8_t);
void flash_store_from_host (uint8_t, arm_pid_instance_t *);

#endif /* __PID_EEPROM_H__ */

