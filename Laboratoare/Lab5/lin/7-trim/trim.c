/**
  * SO, 2016
  * Lab #5
  *
  * Task #7, lin
  *
  * Use of mcheck
  */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "utils.h"

char first_name[] = "  Harry";
char last_name[]  = "    Potter";

static char *trim(char *s)
{
	char *p = malloc(strlen(s) + 1);
	DIE(p == NULL, "malloc");

	/*
	 * daca se modifica p, el nu mai pointeaza la inceputul unui bloc de
	 * memorie returnat de malloc, motiv pentru care free()-ul de mai jos
	 * crapa (nu poate gasi blocul asignat la adresa aia)
	 */
	char *p_no_space  = p; 
 
	strcpy(p, s); 
 
	while (*p_no_space == ' ')
		p_no_space++;

	strcpy(s, p_no_space); 
	free(p); 

	return s;
}

int main(void)
{
	printf("%s %s is learning SO!\n",
		trim(first_name), trim(last_name));

	return 0;
}
