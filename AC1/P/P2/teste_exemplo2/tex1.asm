	.data
list:	.space	32
	.eqv	SIZE,8
	.eqv	print_int10,1
	.eqv	print_string,4
	.eqv	read_int,5
str:	.asciiz "Media Invalida!\n"
	.text
	
	.globl	main
# Mapa de Registos
# rv:	$t7
# n:	$t0
# sum:	$t2
# nit:	$t3
# pt:	$t0

main:
	li	$t2,0		# sum = 0
	li	$t3,0		# nit = 0

	la	$t0,list	# pt = list
	li	$t4,SIZE
	sll	$t4,$t4,2	# SIZE*4
	addu	$t4,$t4,$t0

r_for:	bge	$t0,$t4,r_endf	# for pt < pt+SIZE

	li	$v0,read_int
	syscall
	sw	$v0,0($t0)	# pt* = read_int()
	
	addiu	$t0,$t0,4	# pt++
	j	r_for
r_endf:
	
	la	$t0,list	# $t0=list
	li	$t4,0		# n=0
s_for:	bge	$t4,SIZE,s_endf	# for n < SIZE

	sll	$t5,$t4,2	# n*4
	addu	$t5,$t5,$t0	# &list[n]
	lw	$t6,0($t5)	# $t6=list[n]
s_if:	blt	$t6,0,s_endif

	addu	$t2,$t2,$t6	# sum+=list[n]
	addi	$t3,$t3,1	# nit++
s_endif:	
	addi	$t4,$t4,1	# n++
	j	s_for
s_endf:

m_if:	ble	$t3,0,m_else	# if nit > 0

	div	$a0,$t2,$t3	# sum/nit
	li	$v0,print_int10
	syscall
	
	li	$t7,0		# rv = 0
	j	m_endif
m_else:
	la	$a0,str
	li	$v0,print_string
	syscall
	li	$t7,-1
m_endif:

	jr	$ra