.intel_syntax noprefix
.global _start
_start:
push rdi    # stack: rdi
push rsi    # stack: rsi, rdi

pop rdi     # rdi = original rsi
pop rsi     # rsi = original rdi
