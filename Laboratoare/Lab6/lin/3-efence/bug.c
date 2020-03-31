/**
 * SO, 2017
 * Lab #6
 *
 * Task #3, lin
 *
 * Debugging with 'ElectricFence'
 */
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include "utils.h"

int main(void)
{
	int i;
	int *v = calloc(10, sizeof(*v));
	int *w = calloc(10, sizeof(*w));

	printf("0x%p 0x%p\n", v, w);

	for (i = 0; i < 10; i++)
		v[i] = i;

	/*
	 * Fara efence v si w sunt in aceeasi pagina (la distanta de 48 B pt
	 * aliniament etc), pe cand cu efence sunt la inceputurile altor pagini.
	 * De ce totusi paginile astea sunt asa de sus? In cazul meu sunt la
	 * 0x7fcf5b23e000 0x7fcf5b240000, adica aproape de stiva...
	 * In fara efence sunt mult mai jos:
	 * 0x55b5c54ee260 0x55b5c54ee290
	 */
	for (i = 0; i > -10; i--)
		printf("w[%d] = %d\n", i, w[i]);

	free(w);
	free(v);

	return 0;
}
