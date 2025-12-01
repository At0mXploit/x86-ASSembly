.intel_syntax noprefix
.global _start
_start:
# Write syscall - output the 14-character string
mov rax, 1          # syscall number for write = 1
mov rdi, 1          # file descriptor: 1 = stdout
mov rsi, 1337000    # memory address where the string is stored
mov rdx, 14         # number of characters to write = 14
syscall             # execute the write syscall

# Exit syscall - clean exit
mov rax, 60         # syscall number for exit = 60
mov rdi, 42         # exit code = 42
syscall             # execute the exit syscall
