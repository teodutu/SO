/**
 * SO, 2017
 * Lab #6
 *
 * Task #4, lin
 *
 * Implementing 'cp' with mmap
 */
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <string.h>
#include <unistd.h>

#include "utils.h"

int main(int argc, char *argv[])
{
	int fdin, fdout, rc;
	char *src, *dst;
	struct stat statbuf;

	DIE(argc != 3, "Usage: ./mycp <from_file> <to_file>");

	/* Open input and output files */
	fdin = open(argv[1], O_RDONLY);
	DIE(fdin == -1, "open fdin");

	/* Open/create the output file */
	fdout = open(argv[2], O_RDWR | O_CREAT | O_TRUNC, 0644);
	DIE(fdout == -1, "open fdout");

	/* TODO - truncate the output file to the input file size */
	rc = fstat(fdin, &statbuf);
	DIE(rc < 0, "fstat");

	rc = ftruncate(fdout, statbuf.st_size);
	DIE(rc < 0, "ftruncate");

	/*
	 * Se pun ambele fisiere in memorie si se copiaza datele intre ele (cam
	 * ca la ex 2). Merge simtitor mai rapid decat cp (de vreo 4 ori), dar
	 * se tin ambele fisiere in memorie, ceea ce nu e chiar ok pt fisiere
	 * mari...
	 *
	 * Exista vreun mod sa dau doar drept de scriere unei pagini, nu si de
	 * citire? Adica vad ca PROT_WRITE da si drept de citire.
	 */
	/* TODO - mmap the input and output file */
	src = mmap(NULL, statbuf.st_size, PROT_READ, MAP_PRIVATE, fdin, 0);
	DIE(src == MAP_FAILED, "mmap(src)");

	dst = mmap(NULL, statbuf.st_size, PROT_WRITE, MAP_SHARED, fdout, 0);
	DIE(dst == MAP_FAILED, "mmap(dst)");

	/* TODO - copy the input file to the output file */
	memcpy(dst, src, statbuf.st_size);

	rc = msync(dst, statbuf.st_size, MS_ASYNC);
	DIE(rc < 0, "msync");

	/* TODO - clean up */
	rc = munmap(src, statbuf.st_size);
	DIE(rc < 0, "munmap(src)");

	rc = munmap(dst, statbuf.st_size);
	DIE(rc < 0, "munmap(dst)");

	/* Close files */
	rc = close(fdin);
	DIE(rc == -1, "close source");

	rc = close(fdout);
	DIE(rc == -1, "close destination");

	return 0;
}
