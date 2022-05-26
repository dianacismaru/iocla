#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int my_strlen(const char *str)
{
	const char *p = str;
	int ct = 0;
	while (*p) {
		p++;
		ct++;
	}
	return ct;
}

void equality_check(const char *str)
{
	int len = my_strlen(str);
	printf("length = %d\n", len);
	for (int i = 0; i < len; i++) {
		if (!(*(str + i) ^ *(str + (i + (1<<i)) % len))) {
			printf("adresa este %p\n", str + i);
		}
	}
}

int main(void)
{
	char str[256];
	scanf("%s", str);
	equality_check(str);
	return 0;
}
