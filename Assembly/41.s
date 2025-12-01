.intel_syntax noprefix
.global _start
_start:
jmp trampoline_target        # first instruction: relative jump

.rept 0x51                   # fill exactly 0x51 bytes so the jump lands here
nop
.endr

trampoline_target:
mov rdi, [rsp]               # load the top value of the stack into rdi
mov rax, 0x403000            # prepare absolute jump target
jmp rax                      # absolute jump to 0x403000

