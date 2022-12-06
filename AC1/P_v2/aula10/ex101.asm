# Mapa de Registos:
# abs-----------------
# val:	$a0
# xtoy----------------
# x:	$f22
# res:	$f24
# y:	$s1
# i:	$s0
# main----------------
# doesnt matter
	
	.data
	.eqv	print_float,2
	.eqv	read_int,5
	.eqv	read_float,6
	
f1:	.float	1.0
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

	.globl main
main:
	addiu	$sp,$s0,-8	# reservar espaco na stack
	sw	$ra,0($sp)	# salvaguardar ra,s0
	
	li	$v0,read_float	
	syscall	
	mov.s	$f12,$f0	# x = read_float
	
	li	$v0,read_int
	syscall	
	move	$a0,$v0		# y = read_int
	
	jal	xtoy
	
	mov.d	$f12,$f0
	li	$v0,print_float
	syscall
	
	
	lw	$ra,0($sp)	# repor	$ra
	addiu	$sp,$sp,4	# libertar espaco da stack
	
	jr	$ra
	
