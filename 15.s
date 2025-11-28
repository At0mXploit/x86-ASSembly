.intel_syntax noprefix
.global _start
_start:
# Write syscall - output the character
mov rax, 1          # syscall number for write = 1
mov rdi, 1          # file descriptor: 1 = stdout
mov rsi, 1337000    # memory address where the character is stored
mov rdx, 1          # number of characters to write = 1
syscall             # execute the write syscall

# Exit syscall - clean exit
mov rax, 60         # syscall number for exit = 60
mov rdi, 42         # exit code = 42
syscall             # execute the exit syscall
