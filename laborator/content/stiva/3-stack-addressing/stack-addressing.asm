%include "../utils/printf32.asm"

%define NUM 5
   
section .text

extern printf
global main
main:
    mov ebp, esp

    ; TODO 1: replace every push by an equivalent sequence of commands (use direct addressing of memory. Hint: esp)
    mov ecx, NUM
push_nums:
    push ecx
    loop push_nums

    push 0
    push "mere"
    push "are "
    push "Ana "

    lea esi, [esp]
    PRINTF32 `%s\n\x0`, esi

    ; TODO 2: print the stack in "address: value" format in the range of [ESP:EBP]
    ; use PRINTF32 macro - see format above
    mov eax, esp
label2:
    xor ebx, ebx
    mov bl, byte [eax]
    PRINTF32 `0x%X - %d\n\x0`, eax, ebx
    inc eax
    cmp eax, ebp
    jl label2

    ; TODO 3: print the string
    lea esi, [esp]
    xor edx, edx
label3:
    PRINTF32 `%c\x0`, byte [esi]
    inc esi
    inc edx
    cmp edx, 15
    jle label3
    PRINTF32 `\n\x0`

    ; TODO 4: print the array on the stack, element by element.
    add esp, 16
label4:
    pop eax
    PRINTF32 `%d \x0`, eax
    cmp esp, ebp
    jne label4
    PRINTF32 `\n\x0`
    
    ; restore the previous value of the EBP (Base Pointer)
    mov esp, ebp

    ; exit without errors
    xor eax, eax
    ret
