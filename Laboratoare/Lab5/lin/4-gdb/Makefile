CC = gcc
CPPFLAGS = -I../utils
CFLAGS = -Wall -Wextra -g

.PHONY: all clean

all: fault fault_init

fault: fault.o

fault_init: fault_init.o

fault.o: fault.c ../utils/utils.h

fault_init.o: fault_init.c ../utils/utils.h

clean:
	-rm -f *.o *~ fault fault_init
