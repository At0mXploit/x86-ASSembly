.intel_syntax noprefix
.global _start
_start:
mov rax, 0x403000   # load target address into a register
jmp rax             # jump to the address in rax
