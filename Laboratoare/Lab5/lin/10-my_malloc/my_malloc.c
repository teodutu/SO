/**
  * SO, 2016
  * Lab #5
  *
  * Task #10, lin
  *
  * Dump malloc implementation that only allocates space
  */
#include <unistd.h>
#include <sys/types.h>

#include "my_malloc.h"


void *my_malloc(size_t size)
{
	void *current = NULL;

	current = sbrk(size);

	/*
	 * am vazut in man ca sbrk returneaza (void *)-1 cand da fail, si nu NULL
	 * de aia returnez NULL (ca malloc()-ul) de mana
	 */
	if (current == (void *)-1)
		current = NULL;

	/* return the start of the new allocated area */
	return current;
}
