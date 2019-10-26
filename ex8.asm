global _start
section .data
    msg db "Hello!", 0x0a 
    len equ $ - msg
section .text
_start:
    call func      ; call the func function
    mov eax, 1     ; sys_exit
    int 0x80       ; sys_exit interupt 
func:
    mov eax, 4     ; sys_write
    mov ebx, 1     ; stdout file descriptor
    mov ecx, msg   ; msg location
    mov edx, len   ; length of msg
    int 0x80       ; sys_write system call
    mov ebx, 0     ; exit status
    ret            ; return to the old function