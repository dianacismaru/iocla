#include <stdio.h>
#include <stdlib.h>

void print_binary(int number, int nr_bits)
{
	int index = nr_bits - 1;
	printf("0b");
	while (index >= 0) {
		if ((1 << index) & number)
			printf("1");
		else
			printf("0");
		index--;
	}
	printf("\n");
}

void check_parity(int *numbers, int n)
{
	for (int i = 0; i < n; i++) {
		if (numbers[i] % 2 == 0) {
			print_binary(numbers[i], 8);
		} else {
			printf("0x%08hhx\n", numbers[i]);
		}
	}
}

int main()
{
	int n;
	scanf("%d", &n);

	int *numbers = malloc(n * sizeof(int));
	for (int i = 0; i < n; i++) {
		scanf("%d", &numbers[i]);
	}
	check_parity(numbers, n);
	return 0;
}

