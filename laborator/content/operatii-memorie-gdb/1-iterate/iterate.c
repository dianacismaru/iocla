#include <stdio.h>

/**
 * Afisati adresele elementelor din vectorul "v" impreuna cu valorile
 * de la acestea.
 * Parcurgeti adresele, pe rand, din octet in octet,
 * din 2 in 2 octeti si apoi din 4 in 4.
 */

int main() {
	int v[] = {0xCAFEBABE, 0xDEADBEEF, 0x0B00B135, 0xBAADF00D, 0xDEADC0DE};
	int size = sizeof(v);

	unsigned char *char_ptr = (unsigned char *)v;
	unsigned short *short_ptr = (unsigned short*)v;
	unsigned int *int_ptr = (unsigned int*)v;

	printf("char:\n");
	for (int i = 0; i < size; i++) {
		printf("%p -> 0x%x\n", char_ptr, *char_ptr);
		char_ptr++;
	}

	printf("short:\n");
	for (int i = 0; i < size; i += 2) {
		printf("%p -> 0x%x\n", short_ptr, *short_ptr);
		short_ptr++;
	}
	printf("int:\n");
	for (int i = 0; i < size; i += 4) {
		printf("%p -> 0x%x\n", int_ptr, *int_ptr);
		int_ptr++;
	}
	return 0;
}


