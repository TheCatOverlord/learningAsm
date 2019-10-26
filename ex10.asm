global _start

_start:
    push 21             ; Push the argument to the stack
    call times2         ; call the function
    mov ebx, eax        ; move eax to the exit status
    mov eax, 1          ; sys_exit
    int 0x80            ; sys_exit system call
func:
    push ebp            ; push ebp to the stack
    mov ebp, esp        ; mov the top of the stack to ebp
    mov eax, [esp+8]    ; mov esp+8 (what we pushed above) to eax
    add eax, eax        ; add eax to itself (to times it by 2)
    mov esp, ebp        ; return stack pointer to the top of the stack
    pop ebp             ; pop old ebp back
    ret                 ; return

