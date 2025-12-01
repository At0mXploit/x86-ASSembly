.intel_syntax noprefix
.global str_lower

str_lower:
    mov r8, 0x403000      # address of foo()

    xor rcx, rcx          # i = 0
    cmp rdi, 0x0
    je done               # if src == NULL → return 0

loop:
    mov rbx, rdi          # save pointer
    xor rdi, rdi
    mov dil, byte ptr [rbx]   # load byte
    cmp dil, 0x00
    je done               # stop at null terminator

    cmp dil, 0x5A         # compare <= 0x5A
    jg greater            # if > 'Z', skip foo()

    inc rcx               # i++
    call r8               # call foo(byte)
    mov byte ptr [rbx], al  # store result

greater:
    mov rdi, rbx          # restore pointer
    inc rdi               # move to next byte
    jmp loop

done:
    mov rax, rcx          # return i
    ret

