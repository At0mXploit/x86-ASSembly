.intel_syntax noprefix
.global _start
_start:
mov rax, 1          # syscall number for write = 1
mov rdi, 1          # file descriptor: 1 = stdout  
mov rsi, 1337000    # memory address where the character is stored
mov rdx, 1          # number of characters to write = 1
syscall             # execute the write syscall
