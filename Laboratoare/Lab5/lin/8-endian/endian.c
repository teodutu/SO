/**
  * SO, 2016
  * Lab #5
  *
  * Task #8, lin
  *
  * Endianess
  */
#include <stdlib.h>
#include <stdio.h>

#include "utils.h"

int main(void)
{
	int i;
	unsigned int n = 0xDEADBEEF;
	unsigned char *w = (unsigned char *)&n;

	/* sistemul e little endian deci octetii sunt pusi invers in memorie */
	for (i = 0; i != sizeof(n); ++i, ++w)
		printf("0x%X ", *w);

	printf("\n");

	return 0;
}

