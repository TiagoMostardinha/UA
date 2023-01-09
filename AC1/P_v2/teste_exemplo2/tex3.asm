	.data

fm1:	.float	-1.0
f1:	.float	1.0
f0:	.float	0.0
	.text
	
	.globl	func3
# Mapa de Registos
# a:	$a0
# t:	$f12
# n:	$a2
# oldg:	$f4
# g:	$f2
# s:	$f0
# k:	$t0
func3:

	la	$t0,fm1
	l.s	$f4,0($t0)	# oldg=-1
	
	la	$t0,f1
	l.s	$f2,0($t0)	# g=1
	
	la	$t0,f0
	l.s	$f0,0($t0)	# s=0
	
	li	$t0,0		# k=0
for:	bge	$t0,$a2,endf

	sll	$t1,$t0,2	# k*4
	addu	$t1,$t1,$a0	# &a[k]

while:	sub.s	$f6,$f2,$f4
	c.le.s	$f6,$f12
	bc1t	endw		# while g-oldg>t
	
	mov.d	$f4,$f2		# oldg=g
	
	l.s	$f6,0($t1)	# a[k]
	div.s	$f6,$f6,$f12	# a[k]/t
	add.s	$f2,$f2,$f6	# g+a[k]/t
endw:

	add.d	$f0,$f0,$f2	# s=s+g
	s.s	$f2,0($t1)	# a[k] = g
	
	addi	$t0,$t0,1	#k++
	j	for
endf:
	mtc1	$a2,$f6
	cvt.s.w	$f6,$f6
	div.s	$f0,$f0,$f6	# return s/(float)n
	
	jr	$ra
