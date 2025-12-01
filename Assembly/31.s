.intel_syntax noprefix
.global _start
_start:
mov rax, [0x404000]     # rax = original value
mov rdi, [0x404000]     # load original into a temp register
add rdi, 0x1337         # increment it
mov [0x404000], rdi     # store incremented value back to memory
