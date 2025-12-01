.intel_syntax noprefix
.global _start
_start:
jmp skip_block          # relative jump

.rept 0x51              # fill exactly 0x51 bytes
nop                     # NOP = No Operation; just takes up 1 byte each
.endr                    # end of the repeat block
skip_block:
mov rax, 0x1            # destination: set rax to 1 after jumping over the NOPs
