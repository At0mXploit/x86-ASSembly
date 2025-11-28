.intel_syntax noprefix
.global _start
_start:
# Step 1: Load the pointer from address 567800
mov rdi, [567800]    # This loads the secret address into rdi

# Step 2: Dereference the pointer to get the actual secret value
mov rdi, [rdi]       # This loads the secret value from the address stored in rdi

# Step 3: Exit with the secret value
mov rax, 60
syscall
