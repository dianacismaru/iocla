#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void mirror(char *s)
{
	int len = strlen(s);
	char *aux = malloc(len);
	int j = 0;
	for (int i = len - 1; i >= 0; i--) {
		*(aux + j) = *(s + i);
		j++;
	}
	aux[len] = '\0';
	strcpy(s, aux);
	free(aux);
	printf("%s\n", s);
}

int main()
{
	char s[256];
	scanf("%s", s);
	mirror(s);

	return 0;
}

