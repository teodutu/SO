CC = gcc
CPPFLAGS = -I../utils -Wno-unused-variable
CFLAGS = -Wall -Wextra -g

.PHONY: all clean

all: signalfd

signalfd: signalfd.o

signalfd.o: signalfd.c ../utils/utils.h

clean:
	-rm -f *.o *~ signalfd *.txt
