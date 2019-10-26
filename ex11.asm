global main                             ; gcc defines a start for us, just need to give it a main
extern printf                           ; tell it to include the printf function

section .data                           ; OUR DATA
    msg db "Testing %i...", 0x0a, 0x00  ; msg to print, %i is the format for an int
                                        ; 0x0a is the return char, and 0x00 is the end
main:                                   ; main function
    push ebp                            ; push the base pointer
    mov ebp, esp                        ; mov current stack top to base pointer
    push 123                            ; the int argument for printf
    push msg                            ; the msg argument for printf
    call printf                         ; call printf function
    mov eax, 0                          ; the return value for the main function
    mov esp, ebp                        ; stack pointer back to the top
    pop ebp                             ; pop old base pointer back
    ret                                 ; return 
