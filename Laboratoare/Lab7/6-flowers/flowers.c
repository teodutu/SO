/**
 * SO, 2017 - Lab #07, Profiling & Debugging
 * Task #6, Linux
 *
 * Flowers reloaded
 */

#include <stdio.h>
#include <stdlib.h>

const char *flowers[] = {
	"rose", "tulip", "daisy"
	"petunia", "orchid", "lily"
};

int main(void)
{
	int i;
	int choice;

	/*
	 * flowers[2] = "daisypetunia" pentru ca nu e virgula intre ele...
	 * flowers[5] e in afara vectorului, dar de multe ori cand depasesti
	 * un vector cu putin (1 ca aici), nu-l doare pentru ca e in aceeasi
	 * pagina etc. aici de ce moare direct?
	 */
	printf("%s\n", flowers[2]);

	printf("%p\n", flowers[5]);

	for (i = 0; i < 25; i++) {
		choice = rand() % 6;
		printf("%s\n", flowers[choice]);
	}

	return 0;
}
