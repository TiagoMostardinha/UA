.data
array: .space 32 # Declare array as a 32-byte array of uninitialized values
size: .word 5 # Declare size as a word-sized variable initialized to 5

.text
.globl main
main:
    # Fill array with values
    addi $t0, $0, 0 # Initialize i to 0
    addi $s0, $0, 10 # Initialize value to 10

fill_loop:
    sll $t1, $t0, 3 # Calculate i * 8 (since array is double-sized)
    add $t1, $t1, $a0 # Calculate &array[i]
    s.d $s0,0($t1) # Store value in array[i]
    addi $t0, $t0, 1 # Increment i
    addi $s0, $s0, 10 # Increment value by 10
    slt $t2, $t0, $s3 # Check if i < size
    bne $t2, $0, fill_loop # If i < size, goto fill_loop

    # Call median function and print result
    add $a0, $a0, $0 # Pass array as first argument
    lw $a1, ($s3) # Pass size as second argument
    jal median # Call median function
    add $v0, $0, $f0 # Save result in $v0
    li $v0, 2 # Set $v0 to 2 to print a double-precision floating point value
    syscall # Print result

exit:
    li $v0, 10 # Set $v0 to 10 to exit the program
    syscall # Exit the program
