#include <stdio.h>
#include <unistd.h>

int main(void)
{
	char buffer[] = "ana are mere";
	printf("%s", buffer);
	pid_t p = fork();

	if (p == 0) {
		printf("child\n");
		buffer[3] = '5';
		printf("%s\n", buffer);
	} else {
		sleep(3);
		printf("parent\n");
		printf("%s\n", buffer);
	}

	 return 0;
}