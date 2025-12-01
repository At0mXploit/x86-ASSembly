.intel_syntax noprefix
.global _start
_start:
# Read syscall - read 8 bytes from stdin
mov rax, 0          # syscall number for read = 0
mov rdi, 0          # file descriptor: 0 = stdin
mov rsi, 1337000    # memory address to store the input
mov rdx, 8          # number of bytes to read = 8
syscall             # execute the read syscall

# Write syscall - output the 8 bytes back to stdout
mov rax, 1          # syscall number for write = 1
mov rdi, 1          # file descriptor: 1 = stdout
mov rsi, 1337000    # memory address where the input was stored
mov rdx, 8          # number of characters to write = 8
syscall             # execute the write syscall

# Exit syscall - clean exit
mov rax, 60         # syscall number for exit = 60
mov rdi, 42         # exit code = 42
syscall             # execute the exit syscall
