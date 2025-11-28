.intel_syntax noprefix
.global _start
_start:
mov rdi, [rdi+8]  
mov rax, 60     
syscall  
