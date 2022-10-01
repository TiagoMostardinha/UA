	.data
result:	.double	 1.0	# float result; 
str1:	.asciiz "Calculo de uma potencia do tipo x^y\nIntroduza x: "
str2:	.asciiz "Introduza y: "
str3:	.asciiz	"\nResultado: "	
	.eqv	print_string,4
	.eqv	print_double,3
	.eqv	read_int,5
	.eqv	read_double,7
	.text
	.globl main
# Mapa de Registos	
# x - $f22

main:
	addiu	$sp,$sp,-4	# Reservar espaco para Stack
	sw	$ra,0($sp)
	
	la	$a0,str1
	li	$v0,print_string
	syscall			# print_string(str1)
	
	li	$v0,read_double
	syscall
	mov.d	$f12,$f0	# x = read_double()
	
	la	$a0,str2
	li	$v0,print_string
	syscall			# print_string(str2)
	
	li	$v0,read_int
	syscall
	move	$a0,$v0		# x = read_int()	
	
	jal	xtoy
	
	la	$a0,str3
	li	$v0,print_string
	syscall			# print_string(str3)
	
	mov.d	$f12,$f0
	li	$v0,print_double
	syscall
	
	lw	$ra,0($sp)
	addiu	$sp,$sp,4
	
	jr	$ra
			
#################################	
# Mapa de Registos
# $s0 - i
# $s1 - y
# $f20 - result
# $f22 - x
	
xtoy:		# float xtoy(float x, int y) { 
	addiu	$sp,$sp,-28	# Reservar espaço para Stack
	sw	$ra,0($sp)	# Salvaguardar $ra e $sx
	sw	$s0,4($sp)
	sw	$s1,8($sp)
	s.d	$f20,12($sp)
	s.d	$f22,20($sp)
	
	move	$s1,$a1		# $s1 = y
	mov.d	$f22,$f12	# $f22 = x
	
	li	$s0,0		# i = 0;
	la	$t0,result
	l.d	$f20,0($t0)	# result = 1.0
	
	move	$s1,$a0
	jal	abss		# $s1 = abs(y)
	move	$t1,$v0
	
for:	bge	$s0,$t1,endf	# for(i=0, result=1.0; i < abs(y); i++) { 
	
	
if1:	ble	$s1,0,else	# if(y > 0)
	mul.d	$f20,$f20,$f22	# result *= x;
	j	endif1
	
else:				# else 
	div.d	$f20,$f20,$f22	# result /= x;
	
endif1:
	addi	$s0,$s0,1	# i++	
	j	for
	
endf:				# } 
	mov.d	$f0,$f20	# return result; 
	
	lw	$ra,0($sp)	# Repor $ra,$sx,$fx
	lw	$s0,4($sp)
	lw	$s1,8($sp)
	l.d	$f20,12($sp)
	l.d	$f22,20($sp)
	
	addiu	$sp,$sp,28	# Libertar a Stack
	
	jr	$ra
# } 



abss:		# int abs(int val) { 
	move	$t0,$a0		# $t0 = val
	
if:	bge	$t0,0,endif	# if(val < 0) 
	mul	$t0,$t0,-1	# val = -val; 
endif:	
	move	$v0,$t0		# return val; 

	jr	$ra		# } 