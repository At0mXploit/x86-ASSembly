.intel_syntax noprefix
.global _start
_start:
    mov rax, rdi     # copy rdi
    shr rax, 32      # bring B4 down to lowest byte
    shl rax, 56      # move that byte to MSB, zero below
    shr rax, 56      # bring it back; only that byte remains
