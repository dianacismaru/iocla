%include "../utils/printf32.asm"

; https://en.wikibooks.org/wiki/X86_Assembly/Arithmetic

section .data
    string_quotient db "Quotient: ", 0
    string_remainder db "Remainder: ", 0

    dividend1 db 91
    divisor1 db 27

    dividend2 dd 67254
    divisor2 dw 1349

    dividend3 dq 69094148
    divisor3 dd 87621

section .text
extern printf
global main
main:
    push ebp
    mov ebp, esp

calculate_div_byte:
    xor eax, eax            ; eax = 0
    mov al, byte [dividend1]    ; al = deimpartit
    mov bl, byte [divisor1]     ; bl = impartitor
    div bl                  ; al = al/bl aici ramane catul
print__byte_quotient:
    PRINTF32 `%s\x0`, string_quotient
    xor ebx, ebx                    ; ebx = 0
    mov bl, al                      ; bl = al, adica stochez catul in ebx
    PRINTF32 `%hhu\n\x0`, ebx       ; printeaza catul
print_byte_remainder:
    xor ebx, ebx                    ; ebx = 0
    mov bl, ah                      ; bl = ah
    PRINTF32 `%s\x0`, string_remainder
    PRINTF32 `%hhu\n\x0`, ebx       ; printeaza restul


; TODO: Calculate quotient and remainder for 67254 / 1349.
calculate_div_word:
    mov edx, dword [dividend2] ; dispus in dx si ax
    mov ax, dx
    shr edx, 16
    mov bx, word [divisor2]
    div bx
print_word_quotient:
    PRINTF32 `%s\x0`, string_quotient
    PRINTF32 `%hu\n\x0`, eax
print_word_remainder:
    PRINTF32 `%s\x0`, string_remainder
    PRINTF32 `%hu\n\x0`, edx

    ; TODO: Calculate quotient and remainder for 69094148 / 87621.
calculate_div_dword:
    mov eax, dword [dividend3]
    mov edx, dword [dividend3 + 4]
    mov ebx, dword [divisor3]
    div ebx
print_dword_quotient:
    PRINTF32 `%s\x0`, string_quotient
    PRINTF32 `%hu\n\x0`, eax
print_dword_remainder:
    PRINTF32 `%s\x0`, string_remainder
    PRINTF32 `%hu\n\x0`, edx

    leave
    ret
