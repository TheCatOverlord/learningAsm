global _start

section .text
_start:
    mov ebx, 1    ; start ebx at 1
    mov ecx, 4    ; number of iterations
label:
    add ebx, ebx  ; ebx += ebx
    dec ecx       ; ecx -= 1
    cmp ecx, 0    ; compare the number of iterations to 0
    jg label      ; jump to label is iterations is more than 0
    mov eax, 1    ; sys_exit
    int 0x80      ; interupt
