.intel_syntax noprefix
.global most_common_byte

most_common_byte:
    mov rbp, rsp
    sub rsp, 0x100        # allocate 256-byte frequency table
    xor r8, r8            # index for loop1 (i = 0)

loop1:
    cmp r8, rsi           # if i > length, stop
    jg next
    mov dl, byte ptr [rdi + r8]      # dl = input[i]
    add byte ptr [rsp + rdx], 1      # freq[dl]++
    inc r8
    jmp loop1

next:
    xor rcx, rcx          # rcx = index into freq[]
    xor rbx, rbx          # bl = max frequency found
    xor rax, rax          # rax = best byte so far

loop2:
    cmp rcx, 0xff
    jg done               # finished scanning table

    cmp byte ptr [rsp + rcx], bl     # compare freq[index] vs current max
    jg updateFreq
    jmp increment

updateFreq:
    mov bl, [rsp + rcx]   # update max frequency
    mov rax, rcx          # best byte = rcx

increment:
    inc rcx
    jmp loop2

done:
    mov rsp, rbp          # restore stack
    ret

