.intel_syntax noprefix
.global _start
_start:
mov rax, rdi     # dividend low half = distance
mov rdx, 0       # dividend high half = 0
div rsi          # (rdx:rax) / rsi
                 # result in rax = speed
