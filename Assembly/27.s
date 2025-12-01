.intel_syntax noprefix
.global _start
_start:
and rax, rdi # Since rax is 1 so 1 AND rdi becomes rdi
and rax, rsi
