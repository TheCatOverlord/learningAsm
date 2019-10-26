global _start

_start:
    sub esp, 4             ; Subtract 4 from the stack pointer
    mov [esp], byte 'H'    ; mov byte of char 'H' to the location of esp
    mov [esp+1], byte 'e'  ; mov byte of char 'e' to the location of esp with an offset of 1
    mov [esp+2], byte 'y'  ; mov byte of char 'y' to the location of esp with an offset of 2
    mov [esp+3], byte '!'  ; mov byte of char '!' to the location of esp with an offset of 3
    mov eax, 4             ; sys_write system call
    mov ebx, 1             ; stdout file descriptor
    mov ecx, esp           ; pointer to the bytes to write
    mov edx, 4             ; number of bytes to write
    int 0x80               ; call the system call
    mov eax, 1             ; sys_exit system call
    mov ebx, 0             ; exit status
    int 0x80               ; call the system call