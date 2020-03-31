/**
 * SO, 2017
 * Lab #6
 *
 * Task #1, lin
 *
 * Use of pmap for showing different behavior of mmap calls
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <sys/wait.h>

#include "utils.h"

#define NUM_PAGES 4

static void wait_for_input(const char *msg)
{
	char buf[32];

	printf(" * %s\n", msg);
	printf(" -- Press ENTER to continue ...\n"); fflush(stdout);
	fgets(buf, 32, stdin);
}

int main(void)
{
	int rc;
	int page_size = getpagesize();
	char *p;
	int fd;

	wait_for_input("before mmap file use pmap to see file mapping");

	/** First we map a file */
	fd = open("Makefile", O_RDWR);
	DIE(fd == -1, "open");

	/*
	 * Initial, biblioteca partajata libc e mapata read-only,
	 * read-write sau read-execute, in functie de ce se foloseste din ea.
	 * Apoi, apare o noua pagina (4K) cu maparea Makefileului.
	 * Paginile marcate cu "anon" sunt mapate in RAM (valabil nu doar pentru
	 * biblioteci).
	 */
	p = mmap(NULL, page_size,
		PROT_READ | PROT_WRITE, MAP_PRIVATE, fd, 0);
	DIE(p == MAP_FAILED, "mmap");
	wait_for_input("after mapping the file");

	/*
	 * La munmap, pagina dispare din spatiul procesului.
	 */
	rc = munmap(p, page_size);
	DIE(rc == -1, "munmap");
	wait_for_input("after unmapping the file");

	rc = close(fd);
	DIE(rc == -1, "close");

	/** Second we map SHARED memory */
	/*
	 * Pagina anonima (din RAM) apare ca "zero (deleted)" pentru ca e
	 * neinitializata si indicata cu 's' (shared), fiind memorie partajata.
	 */
	p = mmap(NULL, page_size, PROT_READ | PROT_WRITE,
				 MAP_ANONYMOUS | MAP_SHARED, -1, 0);
	DIE(p == MAP_FAILED, "mmap");
	wait_for_input("after mapping SHARED memory");

	rc = munmap(p, page_size);
	DIE(rc == -1, "munmap");
	wait_for_input("after unmapping SHARED memory");

	/** Thrid we map PRIVATE memory */
	/*
	 * Similar cu mmapul anterior, dar acum nu mai apare indicativul 's',
	 * pagina fiind privata, iar tipul datelor nu mai este relevant,
	 * intrucat doar procesul curent are acces la acea memorie.
	 */
	p = mmap(NULL, page_size, PROT_READ | PROT_WRITE,
				 MAP_ANONYMOUS | MAP_PRIVATE, -1, 0);
	DIE(p == MAP_FAILED, "mmap");
	wait_for_input("after mapping PRIVATE memory");

	rc = munmap(p, page_size);
	DIE(rc == -1, "munmap");
	wait_for_input("after unmapping PRIVATE memory");

	return 0;
}
