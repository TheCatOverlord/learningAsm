global _start

section .text
_start:
    mov ebx, 42 ; exit status 42
    mov eax, 1  ; sys_exit
    jmp skip    ; jmp to skip
    mov ebx, 13 ; exit status 13

skip:           ; skip code
    int 0x80    ; interupt