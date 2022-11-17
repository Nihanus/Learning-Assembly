global _start

section .text
_start:
    mov eax, 1
    mov ebx, esp    ;move the stack pointer to the ebx register
    int 0x80