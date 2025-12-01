.intel_syntax noprefix
.global _start
_start:
    cmp rdi, 3                # check if rdi > 3
    ja default_case           # if rdi > 3, jump to default

    mov rax, [rsi + rdi*8]   # load the jump address from jump table
    jmp rax                   # indirect jump to the selected address

default_case:
    mov rax, [rsi + 4*8]     # load default jump address
    jmp rax                   # jump to default

