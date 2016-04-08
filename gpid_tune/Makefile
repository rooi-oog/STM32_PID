# ------------------------------------------------------------------------------------------- #
# Programm name
PROG_NAME	:= gpid_tune

# where built files will be stored
TARGET_DIR	:= build
TARGET		:= $(PROG_NAME)

# Main programm sources
HEADERS		:= $(shell find src -type f -name *.h)
OBJS		:= $(patsubst %.c, %.o, $(shell find src -type f -name "*.c"))

# Optimization / debug flags
OPT			:= -g3 -Og

# Common C and Linker flags
FLAGS		:= $(OPT) -Wextra -Werror
CFLAGS		:= $(FLAGS) $(shell pkg-config --cflags gtk+-3.0 gmodule-export-2.0)
LDFLAGS		:= -lm $(shell pkg-config --libs gtk+-3.0 gmodule-export-2.0)

# Include directories
INCLUDE		:= lib

# External libraries
LIBS		:= -Llib -lkplot

# Cross-compile tools
PREFIX		:= 
CC			:= $(PREFIX)gcc
LD			:= $(PREFIX)gcc

all: $(TARGET)
	
$(TARGET): $(OBJS) $(HEADERS)
	$(LD) -o $@ $(OBJS) $(LIBS) $(LDFLAGS) 

%.o : %.c $(HEADERS)
	$(CC) $(CFLAGS) $(addprefix -I, $(INCLUDE)) -o $@ -c $<
		
clean:
	rm -rf $(OBJS)
	rm -rf $(TARGET_DIR)/*
	rm -rf $(TARGET)
	rm -rf $(TARGET).exe
	
.PHONY:
	all clean pgm
