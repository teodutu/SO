CC = gcc
CPPFLAGS = -I../utils
CFLAGS = -Wall -Wextra -g

LOCK_FILE=/tmp/my_lock_file

.PHONY: all clean

all: singular singular_flock

singular: singular.o

singular_flock: singular_flock.o

singular_flock.o: singular_flock.c ../utils/utils.h

singular.o: singular.c ../utils/utils.h

clean:
	-rm -f *.o *~ singular singular_flock *.txt $(LOCK_FILE)

