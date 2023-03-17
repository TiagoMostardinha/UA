# Mapa de regustis
# i:		$t0
# v:		$t2
# &(val[0]):	$t1

	.data

	.eqv	print_int10,1
	.eqv	print_string,4
	.eqv	print_char,11
	.eqv	SIZE,8
val:	.word	8,4,15,-1987,327,-9,27,16
str1:	.asciiz "\nResult is: "
	
	.text
	.globl main
	
main:	li	$t0,0		# i = 0
	la	$t1,val		# $t1 = val[SIZE]
	
	li	$t3,SIZE
	srl	$t3,$t3,1	# $t3 
	
do:	
	addu	$t3,$t3,$t0	# $t3 = i + SIZE/ 2
	
	sll	$t4,$t0,2
	addu	$t4,$t4,$t1	# &val[i]
	lw	$t7,0($t4)	# $t7 = val[i]
	lw	$t6,16($t4)	# $t6 = val[i+SIZE/2]
	
	#sll	$t5,$t3,2
	#addu	$t5,$t5,$t1	# &val[i+SIZE/2]
	#lw	$t6,0($t5)	# $t6 = val[i+SIZE/2]
	
	sw	$t6,0($t4)	# val[i] = val[i+SIZE/2]
	sw	$t7,16($t4)	# val[i+SIZE/2] = val[i]
	
	addi	$t0,$t0,1
	j	while

while:	blt	$t0,4,do
	
	la	$a0,str1
	li	$v0,print_string
	syscall
	
	li	$t0,0		# i = 0

do2:	
	sll	$t4,$t0,2
	addu	$t4,$t4,$t1	# &val[i]
	lw	$t7,0($t4)	# $t7 = val[i]
	
	move	$a0,$t7
	li	$v0,print_int10	# print_int10(val[i])
	syscall
	
	addi	$t0,$t0,1	# i++
	
	li	$a0,','
	li	$v0,print_char
	syscall

while2:	blt	$t0,SIZE,do2

	jr	$ra
	
