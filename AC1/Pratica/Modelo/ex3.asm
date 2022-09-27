# Mapa de Registos
# p1:		$t0
# p2:		$t1	
# *p1:		$t2
# *p2:		$t3
# n_even:	$t4
# n_odd:	$t5

# tmp:		$t6


	.data
	
	.eqv	print_int10,1
	.eqv	read_int,5
	.eqv	N,35
	
lista_a:	.space	140
lista_b:	.space	140
	
	.text
	.globl main
	
main:	li	$t4,0		# n_even = 0
	li	$t5,0		# n_odd = 0
	
	la	$t0,lista_a	# p1 = lista_a
	la	$t1,lista_b	# p2 = lista_b
	
for1:	sll	$t0,$t0,2
	addu	
	
	addi	$t6,$t0,N	# $t6 = a + N
	bge	$t0,$t6,endf1	# while(p1 < (a + N))
	
	
endf1:
	
