.intel_syntax noprefix
.global _start
_start:
    test rdi, rdi          # check if rdi == 0
    jz done                # if rdi is 0, result is 0 (rax is already 0)

    xor rax, rax           # counter = 0

loop_start:
    mov bl, byte ptr [rdi + rax]  # load current byte
    test bl, bl                    # check if byte == 0
    jz done                        # if zero, stop loop

    inc rax                        # increment counter
    jmp loop_start                 # repeat

done:
    # rax now holds the number of consecutive non-zero bytes

