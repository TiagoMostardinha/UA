	.data
	
		# typedef struct {
	.eqv	al,0	# char a1[10];
	.eqv	g,12	# double g;
	.eqv	a2,20	# int a2[2];
	.eqv	v,28	# char v;
	.eqv	k,32	# float k;
		# } uvw;	36
		
s2:	.asciiz	"St1"
	.space	9
	.double	3.141592653589
	.word	291,756
	.byte	'X'
	.align	2
	.float	1.983
	.text
f2:	
	la	$t0,s2
	l.s	$f2,k($t0)
	cvt.d.s	$f2,$f2
	
	addiu	$t2,$t0,a2
	lw	$t1,4($t2)
	mtc1	$t1,$f4
	cvt.d.w	$f4,$f4
	
	l.d	$f0,g($t0)
	
	mul.d	$f0,$f0,$f4
	div.d	$f0,$f0,$f2
	
	cvt.s.d	$f0,$f0
	jr	$ra
	
	.globl	main
main:
	addiu	$sp,$sp,-4
	sw	$ra,0($sp)
	
	jal	f2
	
	mov.d	$f12,$f0
	li	$v0,2
	syscall
	
	lw	$ra,0($sp)
	addiu	$sp,$sp,4
	jr	$ra
	
