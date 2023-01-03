	.data
f1:	.double 1.0
f05:	.double	0.5
f0:	.double	0.0

	.eqv	read_double,7
	.eqv	print_double,3
	.text
# sqrt ##############
# $t0:	i
# $f2:	xn
# $f4:	aux

sqrt:
	la	$t0,f1
	l.d	$f2,0($t0)	# xn = 1.0
	
	la	$t0,f0
	l.d	$f6,0($t0)	# $f4=0.0
	
	la	$t0,f05
	l.d	$f8,0($t0)	# $f8=0.5
	
	li	$t0,0		# i=0

s_if:	c.le.d	$f12,$f6
	bc1t	s_else		# if(val > 0.0)
	
s_do:	mov.d	$f4,$f2		# aux=xn
	div.d	$f10,$f12,$f2	# val/xn
	add.d	$f10,$f10,$f2	# xn + val/xn
	mul.d	$f2,$f10,$f8	# xn = 0.5 * (xn + val/xn);
s_while:c.eq.d	$f4,$f2
	bc1f	s_do
	addiu 	$t0,$t0,1
	ble	$t0,25,s_do
	j	s_endif
s_else:
	l.d	$f2,f0
s_endif:
	mov.d	$f0,$f2
	jr	$ra

	.globl	main
# Mapa de Registos
# 
main:
	addiu	$sp,$sp,-4	# reservar espaço na stack
	sw	$ra,0($sp)	# salvaguardar $ra
	
	li	$v0,read_double
	syscall
	mov.d	$f12,$f0
	jal	sqrt
	mov.d	$f12,$f0
	li	$v0,print_double
	syscall
	
	lw	$ra,0($sp)
	addiu	$sp,$sp,4
	
	jr	$ra