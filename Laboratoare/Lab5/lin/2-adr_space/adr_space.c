/**
  * SO, 2016
  * Lab #5
  *
  * Task #2, lin
  *
  * Variables in process address space viewed with objdump
  */
#include <stdlib.h>

int var_a;  /* .bss */
int var_b = 2;  /* .data */
char var_c[] = "so";  /* .data */
char *my_var = "lala";  /* .rodata */

int main(void)
{
	int var_d;  /* stiva */
	static int var_e;  /* .bss */
	char *var_f = "rulz";  /* pointerul pe stiva; pointeaza la "rulz", care e in .rodata */
  char *var = "rulz";  /* ca mai sus; pointerul pointeaza la acelasi "rulz" ca mai sus din .rodata */
	char *var_g = malloc(10);  /* pointerul pe stiva; pointeaza la o zona de pe heap */

	return 0;
}
