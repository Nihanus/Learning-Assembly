global _start

section .data
    msg db "Hello world!", 0x0a ;The contents of the message
    len equ $ - msg             ;The lenght of the message string

section .text
_start:
    mov eax, 4                  ;stdout system call code
    mov ebx, 1
    mov ecx, msg                ;Moving the contents of the message to the register
    mov edx, len                ;Moving the lenght of the message
    int 0x80                    ;interupt using stdout(4)
    mov eax, 1                  ;exit code
    mov ebx, 0                  ;returns 0(code run ok)
    int 0x80                    ;system call