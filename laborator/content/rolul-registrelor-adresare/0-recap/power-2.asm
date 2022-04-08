%include "../utils/printf32.asm"

section .text
extern printf
global main
main:
    push ebp
    mov ebp, esp

    mov eax, 211    ; to be broken down into powers of 2
    mov ebx, 1      ; stores the current power
    mov esi, 0  ; contor
    mov ecx, 1  ; aici pun masca
start:
    test eax, ecx ; fac SI logic
    jz next
    PRINTF32 `%d \x0`, ebx
next:
    shl ecx, 1  ; shiftez masca la stanga cu 1 ca sa compar bitii
    shl ebx, 1  ; inmultesc cu 2 de fiecare data
    inc esi     ; cresc contorul
    cmp esi, 32 ; aici trebuie sa opresc
    jne start   ; daca inca nu a ajuns la 32, continui programul

    leave
    ret
