# Mapa de Registos:
# sqrt-------------
# val:	$f0
# xn:	$f2
# i:	$t0
	
	.data
f0:	.double	0.0
f05:	.double	0.5
f1:	.double 1.0


	.text
sqrt:
	la	$t0,f1
	l.s	$f2,0($t0)	# xn = 1.0

	la	$t0,f0
	l.s	$f4,0($t0)	# $f4 = 0.0
	
	la	$t0,f0
	l.s	$f6,0($t0)	# $f6 = 0.5
	
sq_if:	c.le.s	$f0,$f4		
	bc1t	sq_else		# if val > 0

sq_do:	

	j	sq_endif
sq_else:

sq_endif:
	
	li	$t0,0		# i = 0
	
	.globl	main
main:
	
	