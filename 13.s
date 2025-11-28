.intel_syntax noprefix
.global _start
_start:
# Step 1: Dereference rdi to get the first pointer (PTR2)
mov rdi, [rdi]    # rdi now contains PTR2 (address of PTR1)

# Step 2: Dereference rdi again to get the second pointer (PTR1)  
mov rdi, [rdi]    # rdi now contains PTR1 (address of SECRET_VALUE)

# Step 3: Dereference rdi one more time to get the actual SECRET_VALUE
mov rdi, [rdi]    # rdi now contains the secret value

# Step 4: Exit with the secret value
mov rax, 60
syscall
