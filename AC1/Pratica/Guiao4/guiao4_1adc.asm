# Mapa de registos
# p:	$t0
# *p:	$t1

	.data
	
	.eqv	SIZE,20
str:	.space 	20
str1:	.asciiz	 "Introduza uma string: "
	

	.eqv	read_string,8
	.eqv	print_string,4
	
	.text
	.globl main
	
main:	la	$a0,str1
	li	$v0,print_string	# print_string(str1)
	syscall
	
	
	la	$a0,str			# read_string()
	li	$a1,SIZE
	li	$v0,read_string
	syscall
	
	
	la	$t0,str			# p = str
	
	
while:	lb	$t1,0($t0)		# $t1 = *p

	beqz	$t1,endw
	
	sub	$t3,$t1,0x20
	
	sb	$t3,0($t0)
	addi	$t0,$t0,1
	
	
	j	while
	
			
endw:	la 	$a0, str		# $a0 = str
	li 	$v0, print_string	# $v0 = 4
	syscall				# print_string(str)
	jr	$ra			# fim do programa
