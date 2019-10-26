global _start
section .data
    msg db "Hello from func", 0x0a 
    len equ $ - msg
section .text
_start:
    call func               ; call the func function
    mov eax, 1              ; sys_exit
    mov ebx, 0              ; exit status
    int 0x80                ; sys_exit interupt 
func:
    push ebp                ; push ebp to the stack
    mov ebp, esp            ; mov the location of the stack to ebp
    sub esp, 2              ; allocate 2 bytes on the stack
    mov [esp], byte 'H'     ; mov the byte of char 'H' to current location of esp
    mov [esp+1], byte 'i'   ; mov the byte of char 'i' to current location of esp +1
    mov eax, 4              ; sys_write
    mov ebx, 1              ; stdout
    mov ecx, esp            ; bytes to write in esp
    mov edx, 2              ; number of bytes to write off of esp
    int 0x80                ; sys_write system call
    mov esp, ebp            ; mov the stack pointer back to the location to return to
    pop ebp                 ; pop ebp from the stack
    ret                     ; returns to the location stored at the current location in esp
