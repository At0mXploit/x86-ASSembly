.intel_syntax noprefix
.global _start
_start:
    xor rax, rax          # sum = 0
    xor rcx, rcx          # i = 0 (loop counter)

loop_start:
    cmp rcx, rsi          # compare i with n
    jge loop_end          # if i >= n, exit loop

    mov rdx, [rdi + rcx*8] # load quad word at address rdi + i*8
    add rax, rdx           # sum += current value

    inc rcx                 # i += 1
    jmp loop_start          # repeat

loop_end:
    xor rdx, rdx           # clear rdx for division
    mov rcx, rsi           # divisor = n
    div rcx                # rax = sum / n, rdx = remainder

