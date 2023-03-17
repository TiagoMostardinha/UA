	.data
		# typedef struct
	.eqv	acc,0		# int
	.eqv	nm,4		# char
	.eqv	grade,8		# double
	.eqv	quest,16	# char[14]
	.eqv	cq,32		# int
		# tkvd 36	
	
d0:	.double	0.0
	.text
	.globl	func4
# Mapa de Registos:
# nv:	$a0
# pt:	$a1
# i:	$t0
# j:	$t1
# sum:	$f2
func4:
	la	$t0,d0
	l.d	$f2,0($t0)	# sum = 0.0
	
	li	$t0,0		# i=0
for:	bge	$t0,$a0,endf	# for i < nv

	li	$t1,0		# j=0
do:	addu	$t2,$a1,quest
	addu	$t2,$t2,$t1	# &quest[j]
	lb	$t2,0($t2)
	mtc1	$t2,$f4
	cvt.d.w	$f4,$f4		# (double)quest[j]
	addi	$t1,$t1,1	# j++
	
	addu	$t2,$a1,nm
	lb	$t3,0($t2)
while:	blt	$t1,$t3,do
	
	



endf:
