	.data
	.eqv	TRUE,1
	.eqv	FALSE,0
	.eqv	SIZE,5
	.eqv	read_double,7
	.eqv	print_double,3
array:	.space	40
	.text
	
# median ##############
# $t0:	array
# $t1:	nval
# $t2:	houveTroca
# $t3:	i
# $t4:	nval-1
# $f2:	aux
median: 
	move	$t0,$a0		# $t0 = array
	move	$t1,$a1		# $t1 = nval
m_do:
	li	$t2,FALSE	# hT = False
	li	$t3,0		# i = 0
	
m_for:	addi	$t4,$t1,-1	# $t4 = nval-1
	bge	$t3,$t4,m_endf	# for( i = 0; i < nval-1; i++ {
	
	sll	$t5,$t3,3	# i*8
	addu	$t5,$t5,$t0	# &array[i]
	l.d	$f4,0($t5)	# $f4 = array[i]
	l.d	$f6,8($t5)	# $f6 = array[i+1]
	
m_if:	c.le.d	$f4,$f6		# if( array[i] > array[i+1] )
	bc1t	m_endif	
	
	mov.d	$f2,$f4		# aux = array[i]
	s.d	$f6,0($t5)	# array[i] = array[i+1]
	s.d	$f2,8($t5)	# array[i+1] = aux
	li	$t2,TRUE	# hT = TRUE
m_endif:

	addiu	$t3,$t3,1	# i++
	j	m_for		# }
m_endf:	

	beq	$t2,TRUE,m_do
m_while:

	div	$t4,$t1,2	# $t4 = nval/2
	addu	$t0,$t0,$t4	# &array[nval / 2]
	l.d	$f0,0($t0)	# return array[nval / 2]
	jr	$ra	
			
	.globl main
	
# Mapa de Registos
# $s0:	array
# $t0:	i
main:
	addiu	$sp,$sp,-8	# reservar espaco na sstack
	sw	$ra,0($sp)	# salvaguardar $ra,$s0
	sw	$s0,4($sp)
	
	la	$s0,array
	li	$t0,0		# i=0
	
for:	bge	$t0,SIZE,endf
	
	sll	$t1,$t0,3	# i*8
	addu	$t1,$t1,$s0	# array[i]

	li	$v0,read_double
	syscall
	s.d	$f0,0($t1)	# array[i] = read_double
	
	addiu	$t0,$t0,1	# i++
	j	for		# }
endf:

	move	$a0,$s0
	li	$a1,SIZE
	jal	median
	
	mov.d	$f12,$f0		
	li	$v0,print_double
	syscall			# print_double(median())
	
	lw	$ra,0($sp)
	lw	$s0,4($sp)
	addiu	$sp,$sp,8
	li	$v0,0
	jr	$ra
	