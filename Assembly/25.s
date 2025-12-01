.intel_syntax noprefix
.global _start
_start:
mov rax, 0
mov al, dil    # rax = rdi % 256
mov rbx, 0
mov bx, si     # rbx = rsi % 65536
