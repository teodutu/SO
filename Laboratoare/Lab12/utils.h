/**
 *
 * Useful structures/macros
 */

#ifndef LIN_UTILS_H_
#define LIN_UTILS_H_	1

#include <stdio.h>
#include <stdlib.h>

/* useful macro for handling error codes */
#define DIE(assertion, call_description, instr)			\
	do {							\
		if (assertion) {				\
			fprintf(stderr, "(%s, %d): ",		\
					__FILE__, __LINE__);	\
			perror(call_description);		\
			instr;					\
		}						\
	} while (0)

#endif
