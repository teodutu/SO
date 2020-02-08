CC = gcc
CFLAGS = -Wall
LDLIBS =

all: ops

ops: ops.o mul.o add.o
	$(CC) $^ -lm -o $@

run: ops
	./$<

ops.o: ops.c
	$(CC) $(CFLAGS) $< -D HAVE_MATH -c

mul.o: mul.c
add.o: add.c

clean:
	rm -rf *.o ops

