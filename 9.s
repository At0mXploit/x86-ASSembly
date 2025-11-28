.intel_syntax noprefix
.global _start
_start:
mov rdi, [rdi]  # Dereference rdi - load the value at the address stored in rdi into rdi itself
mov rax, 60     
syscall
