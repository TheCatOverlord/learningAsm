global _start

section .data                    ; Data section
    msg db "Hello, world!", 0x0a ; Array of chars at the msg location
    len equ $ - msg              ; the length of the message

section .text                    ; Text section for code
_start:
    mov eax, 4                   ; int 0x80 sys_write system call
    mov ebx, 1                   ; stdout file descriptor
    mov ecx, msg                 ; location of the bytes to write
    mov edx, len                 ; length of the bytes
    int 0x80                     ; interupt
    mov eax, 1                   ; sys_exit system call
    mov ebx, 0                   ; exits status of 0
    int 0x80                     ; interupt
