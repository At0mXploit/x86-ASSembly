.intel_syntax noprefix
.global _start
_start:
mov rax, rdi     # put rdi into rax (low part of dividend)
mov rdx, 0       # clear rdx (high part of dividend)
div rsi          # (rdx:rax) / rsi → quotient in rax, remainder in rdx
mov rax, rdx     # move remainder into rax for final answer (rdi % rsi)
