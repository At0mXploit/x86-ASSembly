.intel_syntax noprefix
.global _start
_start:
mov rdi, [123400] 
mov rax, 60
syscall
