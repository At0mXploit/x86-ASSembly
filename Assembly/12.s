.intel_syntax noprefix
.global _start
_start:
# Step 1: Dereference rax to get SECRET_LOCATION_1
mov rax, [rax]    # rax now contains the address where the secret value is stored

# Step 2: Dereference rax again to get the actual SECRET_VALUE
mov rdi, [rax]    # rdi now contains the secret value

# Step 3: Exit with the secret value
mov rax, 60
syscall
