 global _start

_start:
    mov eax, 1   ; Puts int 1 into the eax register,  int 0x80 system handler
    mov ebx, 42  ; Puts int 42 into the eax register, exit status
    sub ebx, 29  ; Subtract int 29 from ebx
    int 0x80     ; 0x80 interupt, calls the system handler
