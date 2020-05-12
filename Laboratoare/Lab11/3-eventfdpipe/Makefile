CC = gcc
CPPFLAGS = -I../utils -Wno-unused-variable
CFLAGS = -Wall -Wextra -g

.PHONY: all clean

all: eventfd

eventfd: eventfd.o

eventfd.o: eventfd.c ../utils/utils.h

clean:
	-rm -f *.o *~ eventfd *.txt
