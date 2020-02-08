/**
 * SO, 2016
 * Lab #1, Introduction
 *
 * Task #3-karma, Linux
 *
 * Having fun with link-time & run-time
 */

int str(void);

int main(void)
{
	/*
	La linkare se cauta simbolul `str` care se gaseste in str.c, chit ca e
	un string.
	Cand se face apelul functiei, se incearca sa se sara la adresa din .data
	a lui `str`, care nu e cod executabil => seg fault.
	*/
	str();

	return 0;
}
