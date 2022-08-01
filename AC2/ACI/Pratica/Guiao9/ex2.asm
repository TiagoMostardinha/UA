	.data
x0:	.double	5.0
x1:	.double	9.0
x2:	.double	32.0

str1:	.asciiz	"Temperatura em Fahrenheit: "
str2:	.asciiz "\nTemperatura em Celsius: "

	.eqv	read_double,7
	.eqv	print_double,3
	
	.text
	.globl main

main:	
	addiu	$sp,$sp,-4
	sw	$ra,0($sp)
	
	la	$a0,str1			
	li	$v0,4				# print_string(str1)
	syscall					
	
	li	$v0,read_double
	syscall
	mov.d 	$f12,$f0			# ft = read_double()
	jal	f2c
	
	la	$a0, str2	
	li	$v0, 4				
	syscall					#	print_string(str2);	
	
	mov.d	$f12,$f0
	li	$v0,print_double
	syscall
	
	lw	$ra,0($sp)
	addiu	$sp,$sp,4
	
	li	$v0,0
	
	jr	$ra
	

###############################

f2c:		# double f2c(double ft) { 
	la	$t0,x0
	l.d	$f2,0($t0)			# $f2 = (double)$t0
	
	la	$t0,x1
	l.d	$f4,0($t0)			# $f4 = (double)$t0
	
	la	$t0,x2				
	l.d	$f6,0($t0)			# $f6 = (double)$t0
	
	sub.d	$f12,$f12,$f6			# $f12 = ft – 32.0
	div.d	$f2,$f2,$f4			# $f2 = 5.0 / 9.0
	mul.d	$f0,$f2,$f12			# return (5.0 / 9.0 * (ft – 32.0)); 
	
	jr	$ra				# }
