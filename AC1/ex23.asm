	.data
str1:	.asciiz	"Uma string qualquer"
str2:	.asciiz	"AC1 – P"
	
	.eqv	print_string,4
	.text
	.globl	main
main: 	
	la	$a0,str1
	li	$v0,print_string
	syscall

	la	$a0,str2
	li	$v0,print_string
	syscall


	jr	$ra