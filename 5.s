.intel_syntax noprefix
.global _start
_start:
mov rdi, rsi
mov rax, 60
syscall
