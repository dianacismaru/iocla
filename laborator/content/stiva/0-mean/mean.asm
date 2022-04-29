%include "../utils/printf32.asm"

%define ARRAY_SIZE 13
%define DECIMAL_PLACES 5

section .data

    num_array dw 76, 12, 65, 19, 781, 671, 431, 761, 782, 12, 91, 25, 9
    decimal_point db ".",0


section .text

extern printf
global main
main:
    xor eax, eax
    mov ecx, ARRAY_SIZE
    xor ebx, ebx

while:
    mov bx, word [num_array + 2 * (ecx - 1)]
    add eax, ebx
loop while

    PRINTF32 `Sum of numbers: %u\n\x0`, eax

    ; TODO2 - compute the quotient of the mean
    xor edx, edx
    mov ecx, ARRAY_SIZE
    div ecx

    PRINTF32 `Mean of numbers: %d\n\x0`, eax

    ret
