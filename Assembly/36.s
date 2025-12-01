.intel_syntax noprefix
.global _start
_start:
pop rax    # get top of stack
sub rax, rdi 
push rax   # push back to stack rax
