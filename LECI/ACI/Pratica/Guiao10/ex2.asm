	.data
x0:	.double	1.0
x1:	.double	0.50
x2:	.double 0.0
str1:	.asciiz "Calculo de uma sqrt do tipo x^1/2\nIntroduza x: "
str2:	.asciiz	"\nResultado: "	
	.eqv	print_string,4
	.eqv	print_double,3
	.eqv	read_double,7
	.text
	.globl main
	
main:	
	addiu	$sp,$sp,-4		# reservar espaco para Stack
	sw	$ra,0($sp)		# Salvaguardar $ra
	
	la	$a0,str1
	li	$v0,print_string	# print_string(str1)
	syscall
	
	li	$v0,read_double
	syscall
	mov.d	$f12,$f0		# read_double()
	
	jal	sqrt
	
	la	$a0,str2
	li	$v0,print_string
	syscall
	
	
	mov.d	$f12,$f0
	li	$v0,print_double
	syscall
	
	
	lw	$ra,0($sp)
	addiu	$sp,$sp,4
	li	$v0,0
	jr	$ra
	
	
#################################
	
# Mapa de registos
# $f12 - val
# $f2 - aux
# $f4 - xn
# $f6 = 0.5
# $f8 = 0.0
# $t0 - i


sqrt:		# double sqrt(double val) { 
	la	$t0, x0		#	$t0 = &x0
	l.d	$f4, 0($t0)	#	xn = 1.0;
	la	$t0, x1		#	$t0 = &x1;
	l.d	$f6, 0($t0)	#	$f6 = 0.5
	la	$t0, x2
	l.d	$f8, 0($t0)
	li	$t0, 0		#	i = 0;
	
if:	c.le.d	$f12,$f8		# if(val > 0.0) { 
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

	
	