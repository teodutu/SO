/**
 * SO, 2017
 * Lab #6
 *
 * Task #2, lin
 *
 * write vs mmap
 */
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <unistd.h>
#include <string.h>
#include <errno.h>

#include "utils.h"

#define N 100000

int main(void)
{
	char msg[] = "Testing testing 123...\n";
	int rc, i;
	int fd;
	char *mem;

	fd = open("test_mmap", O_CREAT | O_TRUNC | O_RDWR, 0644);
	DIE(fd == -1, "open");

	rc = ftruncate(fd, N * sizeof(msg));
	DIE(rc == -1, "ftruncate");

	/*
	 * Daca se folseste `MAP_PRIVATE` datele se scriu in RAM si nu in fisier
	 * (se ignora ultimii 2 parametri), motiv pentru care acum fisierul va
	 * fi gol.
	 */
	mem = mmap(0, N * sizeof(msg), PROT_READ | PROT_WRITE,
		MAP_PRIVATE, fd, 0);
	DIE(mem == MAP_FAILED, "mmap");

	/*
	 * Merge mult mai rapid decat varianta cu write pentru ca acum se
	 * folosesc doar 2 apeluri de sistem (un mmap si un munmap) fata de
	 * cele 100000 de apeluri de write din varianta cu write.
	 * Scrierea acums e face din user space prin memcpy.
	 */
	for (i = 0; i < N; i++)
		memcpy(mem + i * sizeof(msg), msg, sizeof(msg));

	rc = munmap(mem, N * sizeof(msg));
	DIE(rc == -1, "munmap");

	rc = close(fd);
	DIE(rc == -1, "close");

	return 0;
}
