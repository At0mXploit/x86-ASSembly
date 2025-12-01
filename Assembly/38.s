.intel_syntax noprefix
.global _start
_start:
mov rax, [rsp]        # D (top of stack)
mov rbx, [rsp+8]      # C
add rax, rbx          # D + C

mov rcx, [rsp+16]     # B
add rax, rcx          # D + C + B

mov rdx, [rsp+24]     # A
add rax, rdx          # D + C + B + A

mov rbx, 4
xor rdx, rdx          # clear for div
div rbx               # rax = average

push rax              # push the average
