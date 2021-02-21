/**
 * SO, 2014
 * Lab #6, Memoria virtuala
 *
 * Task #2, Windows
 *
 * Creating and storing functions dynamically
 */

/* do not use UNICODE */
#undef _UNICODE
#undef UNICODE


#include <stdio.h>
#include <assert.h>
#include <limits.h>
#include <windows.h>

#include "utils.h"

static int pageSize = 0x1000;

/* Pointer to a function with one int parameter, returning int */
int (*dyncode)(int);

/* init array with code that acts like a function which:
 * (1) gets a parameter from stack
 * (2) increments that value
 * (3) returns that value
 */
unsigned char code[] = {
	0x8B, 0x44, 0x24, 0x04,  /* mov eax, [esp+4] (1) */
	0x40,			 /* inc eax          (2) */
	0xC3			 /* ret              (3) */
};

/*
 * Asta deschide calculatorul in Windows 10.
 * L-am gasit pe net cand cautam shellcodeuri :)))
 */
UCHAR calc_code[] =	"\x50\x53\x51\x52\x56\x57\x55\x89"
			"\xe5\x83\xec\x18\x31\xf6\x56\x6a"
			"\x63\x66\x68\x78\x65\x68\x57\x69"
			"\x6e\x45\x89\x65\xfc\x31\xf6\x64"
			"\x8b\x5e\x30\x8b\x5b\x0c\x8b\x5b"
			"\x14\x8b\x1b\x8b\x1b\x8b\x5b\x10"
			"\x89\x5d\xf8\x31\xc0\x8b\x43\x3c"
			"\x01\xd8\x8b\x40\x78\x01\xd8\x8b"
			"\x48\x24\x01\xd9\x89\x4d\xf4\x8b"
			"\x78\x20\x01\xdf\x89\x7d\xf0\x8b"
			"\x50\x1c\x01\xda\x89\x55\xec\x8b"
			"\x58\x14\x31\xc0\x8b\x55\xf8\x8b"
			"\x7d\xf0\x8b\x75\xfc\x31\xc9\xfc"
			"\x8b\x3c\x87\x01\xd7\x66\x83\xc1"
			"\x08\xf3\xa6\x74\x0a\x40\x39\xd8"
			"\x72\xe5\x83\xc4\x26\xeb\x41\x8b"
			"\x4d\xf4\x89\xd3\x8b\x55\xec\x66"
			"\x8b\x04\x41\x8b\x04\x82\x01\xd8"
			"\x31\xd2\x52\x68\x2e\x65\x78\x65"
			"\x68\x63\x61\x6c\x63\x68\x6d\x33"
			"\x32\x5c\x68\x79\x73\x74\x65\x68"
			"\x77\x73\x5c\x53\x68\x69\x6e\x64"
			"\x6f\x68\x43\x3a\x5c\x57\x89\xe6"
			"\x6a\x0a\x56\xff\xd0\x83\xc4\x46"
			"\x5d\x5f\x5e\x5a\x59\x5b\x58\xc3";

int main(void)
{
	/* static code will be copied to an area alocated with VirtualAlloc
	 * - ergo any dynamically generated code could be treated this way
	 */

	/*
	 * Se aloca o noua zona executabila, in care o sa se scrie codul binar
	 * din calc_code/code.
	 * Codul asta e executat mai jos, in printf.
	 */
	dyncode = (int (*)(int)) VirtualAlloc(NULL, pageSize,
		MEM_COMMIT, PAGE_EXECUTE_READWRITE);
	DIE(dyncode == NULL, "VirtualAlloc");

	// memcpy(dyncode, code, sizeof(code));
	memcpy(dyncode, calc_code, sizeof(calc_code));

	printf("valoare intoarsa = %d\n", (*dyncode)(2));

	VirtualFree(dyncode, 0, MEM_RELEASE);

	return 0;
}
