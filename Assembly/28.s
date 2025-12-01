.intel_syntax noprefix
.global _start
_start:
xor rax, rax      # rax = 0
xor rdi, 1        # flip LSB of x: even→1, odd→0
and rdi, 1        # keep only the lowest bit
or  rax, rdi      # rax = result (1 if even, 0 if odd)
