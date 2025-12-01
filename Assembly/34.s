.intel_syntax noprefix
.global _start
_start:
mov rax, 0xdeadbeef00001337   # load 64-bit constant
mov [rdi], rax                # store full quad word at [rdi]

mov rbx, 0xc0ffee0000         # load 40-bit constant (fits in 64-bit reg)
mov [rsi], rbx                # store it at [rsi]
