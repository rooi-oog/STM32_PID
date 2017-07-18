# ------------------------------------------------------------------------------------------- #
# MCU

# ST NUCLEO F401RE board
#CPU			:= F401xE
#FPU			:= hard
#HSE_VALUE		:= 0

# Self made STM32F103C8 board
CPU			:= F10X_MD
HSE_VALUE	:= 8000000

# ------------------------------------------------------------------------------------------- #
# Programm name
PROG_NAME	:= pid

# where built files will be stored
TARGET_DIR	:= build
TARGET		:= $(PROG_NAME).elf

ifeq ($(CPU),F401xE)
	MCPU	= -mcpu=cortex-m4 -mfloat-abi=$(FPU)
	HAL_DIR	= stm32f4
else ifeq ($(CPU),F10X_MD)		
	MCPU	= -mcpu=cortex-m3 -mfloat-abi=soft -DARM_MATH_CM3
	HAL_DIR	= stm32f1
endif

# Cortex M3/4 system files 
SYSTEM_DIR	:= system
OBJS		:= $(patsubst %.c, %.o, $(shell ls -1 $(SYSTEM_DIR)/$(CPU)/*.c))
OBJS		+= $(patsubst %.c, %.o, $(shell ls -1 $(SYSTEM_DIR)/newlib/*.c))
#OBJS		+= $(patsubst %.c, %.o, $(shell ls -1 $(SYSTEM_DIR)/hal/src/$(HAL_DIR)/*.c))

# Main programm sources
OBJS		+= $(patsubst %.c, %.o, $(shell find src -type f -name "*.c"))

# Optimization / debug flags
OPT			:= -O3 -g #-g3 -Og 

# Common C and Linker flags
FLAGS		:= $(MCPU) $(OPT) -mthumb -fmessage-length=0 -fsigned-char 
FLAGS		+= -ffunction-sections -fdata-sections -ffreestanding 
FLAGS		+= -fno-move-loop-invariants -Wall -Wextra 

# C compiler flags
CFLAGS		:= $(FLAGS) -DSTM32$(CPU) -DHSE_VALUE=$(HSE_VALUE)

# Linker flags
LDFLAGS		:= $(FLAGS) -T mem.ld -T libs.ld -T sections.ld
LDFLAGS		+= -nostartfiles -Xlinker --gc-sections
LDFLAGS 	+= -L"ldscripts/$(CPU)" -Wl,-Map,"$(TARGET_DIR)/$(PROG_NAME).map" 
LDFLAGS		+= --specs=nano.specs

# Include directories
INCLUDE		:= $(SYSTEM_DIR) $(SYSTEM_DIR)/cmsis 
INCLUDE		+= $(SYSTEM_DIR)/$(CPU) 

# External libraries
LIBS		:=

# Cross-compile tools
PREFIX		:= arm-none-eabi-
CC			:= $(PREFIX)gcc
LD			:= $(PREFIX)gcc

all: $(TARGET)
	# Get disassembled
	$(PREFIX)objdump -DS --wide $(TARGET_DIR)/$(TARGET) > $(TARGET_DIR)/$(PROG_NAME).asm
	# Get binary firmware
	$(PREFIX)objcopy -O binary $(TARGET_DIR)/$(TARGET) $(TARGET_DIR)/$(PROG_NAME).bin
	$(PREFIX)objcopy -O ihex $(TARGET_DIR)/$(TARGET) $(TARGET_DIR)/$(PROG_NAME).hex

pgm: $(TARGET)
#	openocd -f  usbblaster.cfg -c "program $(TARGET_DIR)/$(TARGET) verify reset exit"
#	openocd -f stlink_v2.1.cfg -c "program $(TARGET_DIR)/$(TARGET) verify reset exit"
#	openocd -f stlink_v2.1.f103.cfg -c "program $(TARGET_DIR)/$(TARGET) verify reset exit"
	openocd -f stlink_v2.cfg -c "program $(TARGET_DIR)/$(TARGET) verify reset exit"	
	
$(TARGET): $(OBJS)
	$(LD) $(LDFLAGS) -o $(TARGET_DIR)/$@ $^ $(LIBS)

%.o : %.c
	$(CC) $(CFLAGS) $(addprefix -I, $(INCLUDE)) -o $@ -c $<
		
clean:
	rm -rf $(OBJS)
	rm -rf $(TARGET_DIR)/*	
	
.PHONY:
	all clean pgm
