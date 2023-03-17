	.data
f0:	.double 0.0
	.text
abs_:				# int abs(int val) {
a_if:	bge	$a0,0,a_endif		# if val < 0
	mul	$a0,$a0,-1		#	val = -val
a_endif:				
	move	$v0,$a0			# return val
	jr	$ra			


xtoy:				# float xtoy(float x,int y) {
	addiu	$sp,$sp,-20	# reservar espaco na stack
	sw	$ra,0($sp)	# salvaguardar f2,f4,s0,s1,ra
	s.s	$f22,4($sp)
	s.s	$f24,8($sp)	
	sw	$s0,12($sp)
	sw	$s1,16($sp)
	
	move	$s1,$a0		# $s1 = y
	mov.s	$f22,$f12	# $f22 = x
	
	li	$s0,0		# i= 0
	la	$t0,f1
	l.s	$f24,0($t0)	# result = 1.0
	
xt_for:	
	move	$a0,$s1			# $a0 = y
	jal	abs_
	bge	$s0,$v0,xt_endfor	# for i < abs(y) {

xt_if:	ble	$s1,0,xt_else		# if y > 0
	mul.s	$f24,$f24,$f22		# result *= x
	j	xt_endif
	
xt_else:
	div.s	$f24,$f24,$f22		# result /= x
	
xt_endif:

	addi	$s0,$s0,1		# i++
	j	xt_for			# }
xt_endfor:
	mov.s	$f0,$f24
	
	lw	$ra,0($sp)	# repor f2,f4,s0,s1,ra
	l.s	$f22,4($sp)
	l.s	$f24,8($sp)	
	lw	$s0,12($sp)
	lw	$s1,16($sp)
	addiu	$sp,$sp,20	# libertar espaco na stack
	
	jr	$ra

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

average:	# double average(double *array, int n) {
	move	$t0,$a1		# int i = n;
	
	la	$t1,f0		
	l.d	$f2,0($t0)	# double sum = 0.0;
	
a_for:	ble	$t0,0,a_endf	# for(; i > 0; i--) {
	
	addi	$t1,$t0,1	# i - 1
	sll	$t1,$t1,3	# 8*(i-1)
	addu	$t2,$a0,$t1
	l.d	$f4,0($t2)	# array[i-1]
	
	add.d	$f2,$f2,$f4	# sum += array[i-1];
	
	addiu	$t0,$t0,-1	# i--
	j	a_for		# }
a_endf:	
	mtc1	$a1,$f6
	cvt.d.w	$f6,$f6
	
	div.d	$f0,$f2,$f6	# return sum / (double)n;
	jr	$ra		# }

# var ##################
# 
var:	
	
	.globl	main
main: