global add42            ; make it accessable to the linker
add42:                  ; our function
    push ebp            ; push the base pointer to the stack
    mov ebp, esp        ; mov the location of the top of the stack to ebp
    mov eax, [esp+8]    ; get the int argument
    add eax, 42         ; add 42 to it
    mov esp, ebp        ; mov stack pointer back to the top
    pop ebp             ; restore old base pointer
    ret                 ; return
