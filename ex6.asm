global _start
section .data
    addr db "yellow", 0x0a
section .text
_start:
    mov eax, 4               ; sys_write
    mov ebx, 1               ; stdout file discriptor
    mov ecx, addr            ; location of bytes to write
    mov edx, 7               ; number of bytes to write
    int 0x80                 ; print interupt
    mov [addr], byte 'H'     ; mov the byte value of the char 'H' to the location of the msg
    mov [addr+5], byte '!'   ; mov the byte value of '!' to the location of the msg with an offset of 5
    mov eax, 4               ; sys_write                       - didn't think this was needed
    mov ebx, 1               ; stdout file descriptor          - didn't think this was needed
    mov ecx, addr            ; location of the bytes to write  - didn't think this was needed
    mov edx, 7               ; number of bytes to write        - didn't think this was needed
    int 0x80                 ; print interupt again
    mov eax, 1               ; sys_exit
    mov ebx, 0               ; exit status
    int 0x80                 ; exit interupt