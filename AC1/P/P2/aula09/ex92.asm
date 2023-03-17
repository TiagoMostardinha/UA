	.data
f5:	.double	5.0
f9:	.double	9.0
f32:	.double	32.0

	.eqv	read_double,7
	.eqv 	print_double,3
	.text
# f2c #######################################
f2c:	# double f2c(double ft) {
	la	$t0,f5
	l.d	$f2,0($t0)	# $f2 = 5.0
	la	$t0,f9
	l.d	$f4,0($t0)	# $f4 = 9.0
	la	$t0,f32
	l.d 	$f6,0($t0)	# $f6 = 32.0
	
	sub.d	$f12,$f12,$f6	# (ft – 32.0)
	div.d	$f2,$f2,$f4
	mul.d	$f0,$f12,$f2	# return (5.0 / 9.0 * (ft – 32.0));
	
	jr	$ra	# }
	
	.globl main
	
# Mapa de Registo
# 
main:
	addiu	$sp,$sp,-4	# reservar espaço na stack 
	sw	$ra,0($sp)	# salvaguardar $ra
	
	li	$v0,read_double
	syscall	
	mov.d	$f12,$f0	# $f12 = read_double

	jal	f2c		# double f2c()
	
	mov.d	$f12,$f0	
	li	$v0,print_double
	syscall			# prin_double()
	
	lw	$ra,0($sp)	# 
	addiu	$sp,$sp,4	# 
	
	jr	$ra
	
	
	
	