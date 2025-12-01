.intel_syntax noprefix
.global _start
_start:
    mov eax, [rdi]            # load [x] into eax for comparison

    cmp eax, 0x7f454c46       # check first magic value
    je first_case              # if equal, jump to first case

    cmp eax, 0x00005A4D       # check second magic value
    je second_case             # if equal, jump to second case

    jmp else_case              # else, jump to else_case

first_case:
    mov eax, [rdi+4]          # load [x+4]
    mov ebx, [rdi+8]          # load [x+8]
    mov ecx, [rdi+12]         # load [x+12]
    add eax, ebx               # eax = [x+4] + [x+8]
    add eax, ecx               # eax = eax + [x+12]
    jmp done

second_case:
    mov eax, [rdi+4]          # load [x+4]
    mov ebx, [rdi+8]          # load [x+8]
    mov ecx, [rdi+12]         # load [x+12]
    sub eax, ebx               # eax = [x+4] - [x+8]
    sub eax, ecx               # eax = eax - [x+12]
    jmp done

else_case:
    mov eax, [rdi+4]          # load [x+4]
    mov ebx, [rdi+8]          # load [x+8]
    mov ecx, [rdi+12]         # load [x+12]
    imul eax, ebx              # eax = [x+4] * [x+8]
    imul eax, ecx              # eax = eax * [x+12]

done:
    mov rax, rax               # result already in eax, upper bits zeroed
