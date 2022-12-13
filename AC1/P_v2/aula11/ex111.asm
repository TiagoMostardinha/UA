	.data
			# typedef struct {
	.eqv	id_number,0	# unsigned int id_number;
	.eqv	first_name,4	# char first_name[18];
	.eqv	last_name,22	# char last_name[15];
	.eqv	float_grade,40	# float grade;
			# } student; 44
	
	.align	2
			# static student stg = {72343, "Napoleao", "Bonaparte", 5.1};	
stg:	.word	72343
	.asciiz "Napoleao"
	.space	9
	.asciiz "Bonaparte"
	.space 	5
	.float	5.1
	
str1:	.asciiz	"\nN. Mec: "
str2:	.asciiz	"\nNome: "
str3:	.asciiz	"\nNota: "
				
	.eqv	print_string,4
	.eqv	print_intu10,36
	.eqv	print_char,11
	.eqv	print_float,2
	.eqv	read_int,5
	.eqv	read_string,8
	
	.text
	.globl main
	
# Mapa de Registo:
# stg:	$t0
	
	
main:	# a)
	la	$t0,stg			# $t0 = stg

	la	$a0,str1	
	li	$v0,print_string
	syscall
	
	lw	$a0,id_number($t0)
	li	$v0,print_intu10
	syscall				# print(student.id_number)
	
	la	$a0,str2
	li	$v0,print_string
	syscall
	
	addiu	$a0,$t0,last_name
	li	$v0,print_string
	syscall				# print(student.last_name)
	
	li	$a0,','
	li	$v0,print_char
	syscall				# print_char(',')
	
	addiu	$a0,$t0,first_name
	li	$v0,print_string
	syscall				# print_string(student.first_name)
	
	la	$a0,str3
	li	$v0,print_string
	syscall
	
	l.s	$f12,float_grade($t0)
	li	$v0,print_float
	syscall

	#
		
	li	$a0,'\n'
	li	$v0,print_char
	syscall				# print_char('\n')
	
	# b)
	
	li	$v0,read_int
	syscall
	sw	$v0,id_number($t0)	# stg.id_number = read_int();
	
	addiu	$a0,$t0,first_name
	li	$a1,18
	li	$v0,read_string
	syscall				# stg.first_name = read_int()
		
		

	la	$a0,str1	
	li	$v0,print_string
	syscall
	
	lw	$a0,id_number($t0)
	li	$v0,print_intu10
	syscall				# print(student.id_number)
	
	la	$a0,str2
	li	$v0,print_string
	syscall
	
	addiu	$a0,$t0,last_name
	li	$v0,print_string
	syscall				# print(student.last_name)
	
	li	$a0,','
	li	$v0,print_char
	syscall				# print_char(',')
	
	addiu	$a0,$t0,first_name
	li	$v0,print_string
	syscall				# print_string(student.first_name)
	
	la	$a0,str3
	li	$v0,print_string
	syscall
	
	l.s	$f12,float_grade($t0)
	li	$v0,print_float
	syscall
		# print_string(student.first_name)
	
	
	jr	$ra