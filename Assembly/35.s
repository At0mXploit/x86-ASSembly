.intel_syntax noprefix
.global _start
_start:
mov rax, [rdi]        # load first  quad word
mov rbx, [rdi + 8]    # load second quad word (next 8 bytes)
add rax, rbx          # sum = first + second
mov [rsi], rax        # store result at destination
