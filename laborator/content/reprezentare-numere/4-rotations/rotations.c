#include <stdio.h>

void rotate_left(int *number, int bits)
{
	bits = (bits % 32 + 32) % 32;
	*number = (*number << bits) | (*number >> (32 - bits));
	printf("left rotation: %d\n", *number);
}

void rotate_right(int *number, int bits)
{
	bits = (bits % 32 + 32) % 32;
	*number = (*number >> bits) | (*number << (32 - bits));
	printf("right rotation: %d\n", *number);
}

int main()
{
	int number, bits;
	scanf("%d", &number);
	scanf("%d", &bits);

	if (bits) {
		int aux = number;
		rotate_left(&aux, bits);
		rotate_right(&number, bits);
	} else {
		printf("%d\n", number);
	}

	return 0;
}
