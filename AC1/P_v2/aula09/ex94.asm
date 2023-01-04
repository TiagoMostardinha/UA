	.data
array:	.space	40
	.eqv	SIZE,5
	.eqv	read_double,7
	.eqv	print_double,3
	.text
# max ###################
# $t2:	u
max:		# double max(double *p, unsigned int n){
	move	$t0,$a0		# $t0 = p
	move	$t1,$a1		# $t1 = n

	addi	$t1,$t1,-1	# n-1
	sll	$t1,$t1,3	# (n-1) *8
	addu	$t2,$t0,$t1	# double *u = p+n–1;
	
	l.d	$f0,0($t2)	# max = *p
	addi	$t0,$t0,8	# p++
	
m_for:	bgt	$t0,$t2,m_endf	# for(; p <= u; p++){
	l.d	$f2,0($t0)	# $f2=*p
m_if:	c.le.d	$f2,$f0		
	bc1t	m_endif		# if(*p > max)
	mov.d	$f0,$f2		# max = *p;
m_endif:
	addiu	$t0,$t0,8	# i++
	j	m_for
m_endf:				#}
				# return max;
	jr	$ra		#}
	
	.globl	main
main:
	addiu	$sp,$sp,-4	# reservar espaço na stack
	sw	$ra,0($sp)	# salvaguardar $ra
	
	la	$t2,array
	
	li	$t0,0		# i=0
for:	bge	$t0,SIZE,endf
	sll	$t1,$t0,3	# i*8
	addu	$t1,$t1,$t2	# &array + i*8

	li	$v0,read_double
	syscall
	s.d	$f0,0($t1)	# array[i]=read_double()
	
	addiu	$t0,$t0,1	# i++
	j	for
endf:
	la	$a0,array
	li	$a1,SIZE
	jal	max
	mov.d	$f12,$f0
	li	$v0,print_double
	syscall
	
	lw	$ra,0($sp)
	addiu	$sp,$sp,4
	jr	$ra

	