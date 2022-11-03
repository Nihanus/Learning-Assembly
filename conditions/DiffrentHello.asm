global _start

section .data
    msg1 db "Hello world", 0x0a
    len1 equ $ - msg1
    msg2 db "Hi", 0x0a
    len2 equ $ - msg2

section .text
_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, 100
    mov edx, 25
    cmp edx, ecx
    jg bigger
    mov ecx, msg1
    mov edx, len1
    int 0x80
    mov eax, 1
    mov ebx, 0
    int 0x80

bigger:
    mov ecx, msg2
    mov edx, len2
    int 0x80
    mov eax, 1
    mov ebx, 0
    int 0x80