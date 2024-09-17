#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char* delete_first(char *s, char *pattern);

int main(){
	char *s = "Ana are mere";
	char *pattern = "re";
	char *saux = strdup(s);

	printf("%s\n", delete_first(saux, pattern));
	free(saux);

	return 0;
}

char* delete_first(char *s, char *pattern) {
	if (strstr(s, pattern))
		strcpy(strstr(s, pattern), strstr(s, pattern) + strlen(pattern));
	return s;
}
