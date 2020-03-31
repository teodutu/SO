/**
 * SO, 2014
 * Lab #6
 *
 * Task #8, lin
 *
 * Changing code will running
 */
#include <sys/mman.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

#define ALIGN_TO_PAGE(addr) ((void *)((intptr_t)(addr) & ~(getpagesize()-1)))

static int pagesize;

/*
000000000000076a <foo>:
 76a:	55                   	push   rbp
 76b:	48 89 e5             	mov    rbp,rsp
 76e:	b8 0c 00 00 00       	mov    eax,0xc
 773:	5d                   	pop    rbp
 774:	c3                   	ret
*/
int foo(void)
{
	return 12;
}

int main(void)
{
	void *addr, *addr_aligned, *page_end;
	int (*f)();
	char *crt;

	pagesize = getpagesize();

	// adresa functiei
	addr = &foo;
	printf("adresa functiei %p\n", addr);

	// aliniere adresa a multiplu de pagina
	addr_aligned = ALIGN_TO_PAGE(addr);
	printf("adresa paginii ce contine functia %p\n", addr_aligned);

	// final pagina
	page_end = addr_aligned + pagesize;

	// pid
	printf("process id %i\n", getpid());

	printf("primul apel: foo intoarce %d\n", foo());

	// schimbare protectie pagina
	if (mprotect(addr_aligned, pagesize, PROT_READ | PROT_WRITE | PROT_EXEC)) {
		perror("mprotect");
		return 1;
	}

	// schimbare valoare de intors functie
	/* f e adresa lui foo (0x000000000000076a + cat ii pune loaderul) */
	f = (int (*)())foo;

	/*
	 * Secventa [0xb8 0x0c] e inceputul instructiunii `mov    eax,0xc`,
	 * din care `mov    eax` e 0xb8, deci pe viitor se modifica 0xc in 0xff.
	 */
	while ((long)f < (long)page_end &&
		((long)*f != 0xb8 && *((char *)f + 1) != 0x0c))
		f++;

	crt = (char *)(++f);
	printf("f = %p\t*bla = %hhx\n", f, *crt);
	*crt = 0xff;

	printf("al doilea apel: foo intoarce %d\n", foo());

	return 0;
}

