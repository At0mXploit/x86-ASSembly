.intel_syntax noprefix
.global _start
_start:
mov al,  [0x404000]    # rax = byte
mov bx,  [0x404000]    # rbx = word
mov ecx, [0x404000]    # rcx = double word
mov rdx, [0x404000]    # rdx = quad word
