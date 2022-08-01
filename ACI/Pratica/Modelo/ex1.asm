# Mapa de regustis
# val:	$t0
# n:	$t1
# min:	$t2
# max:	$t3

	.data
	
str1:	.asciiz "Digite ate 20 inteiros (zero para terminar):"
str2:	.asciiz "Maximo/minimo sao: \n"
	.eqv	print_string,4
	.eqv	print_int10,1
	.eqv	read_int,5
	.eqv	print_char,11
	.eqv	SIZE,20
	
	.text
	.globl main

main:	la	$a0,str1		# print_string(str1)
	li	$v0,print_string
	syscall
	
	li	$t1,0			# n = 0
	ori	$t2,$t2,0x7FFFFFFF	# min = 0x7FFFFFFF
	ori	$t3,$t3,0x80000000	# max = 0x80000000
	
while:	bge	$t1,SIZE,endw

	li	$v0,read_int		# $t0 = read_int()
	syscall
	
	move	$t0,$v0
	
	beq	$t0,0,endw		# if(val != 0)
		
	ble	$t0,$t3,while1		# if( val > max)
	move	$t3,$t0			# max = val
while1:	bge	$t0,$t2,whilec		# if( val > max)
	move	$t2,$t0			# min = val

whilec:	addi	$t1,$t1,1
	j	while

		
endw:	la	$a0,str2
	li	$v0,print_string
	syscall
	
	move	$a0,$t3
	li	$v0,print_int10
	syscall
	
	li	$a0,':'
	li	$v0,print_char
	syscall

	move	$a0,$t2
	li	$v0,print_int10
	syscall

	jr	$ra
	