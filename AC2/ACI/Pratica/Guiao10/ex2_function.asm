	.data
x0:	.double	0.0
x1:	.double	1.0
x5:	.double 0.5

	.text
	.globl sqrt
	
# Mapa de registos
# $f12 - val
# $f2 - aux
# $f4 - xn
# $f6 = 0.5
# $f8 = 0.0
# $t0 - i


sqrt:		# double sqrt(double val) { 
	li	$t0,0		# i = 0
	la	$t1,x1		# xn = 1.0
	l.d	$f4,0($t1)	# $f22 = xn
	la	$t1,x0		# $f8 = 0.0
	l.d	$f8,0($t1)
	la	$t1,x5
	l.d	$f6,0($t1)
	
if:	c.le.d	$f2,$f8		# if(val > 0.0) { 
	bc1t	else
	
do:				# do { 
	mov.d	$f2,$f4		# aux = xn; 
	
	div.d	$f4,$f12,$f2
	add.d	$f4,$f2,$f4
	mul.d	$f4,$f6,$f4	# xn = 0.5 * (xn + val/xn); 
	
while:	c.eq.d	$f2, $f4	# } while((aux != xn) 
	bc1t	endif		#	&&
andd:	addi	$t0, $t0, 1	# ++i
	blt	$t0, 25, do	#	   < 25));	
	j	endif		#
	
else:				# } else 
	mov.d	$f4,$f8		# xn = 0.0; 
	
endif:
	mov.d	$f0,$f4		# return xn; 
	jr	$ra		# } 
