.intel_syntax noprefix
.global _start
_start:
mov rdi, [rax]  # Dereference rax - load the value at the address stored in rax into rdi
mov rax, 60     # Set syscall number for exit
syscall         # Invoke syscall to exit with the secret value
