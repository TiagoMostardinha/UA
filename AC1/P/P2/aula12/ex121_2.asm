	.data
st_array: .space 176

media:	.space	4
max_grade:.float	-20.0

		# typedef struct{
	.eqv	id_number,0	# unsigned int id_number;
	.eqv	first_name,4	# char first_name[18];
	.eqv	last_name,22	# char last_name[15];
	.eqv	grade,40	# float grade;
		# } student;	44
	
	.eqv	MAX_STUDENTS,4	
	.eqv	st1,0
	.eqv	st2,44
	.eqv	st3,88
	.eqv	st4,132
	
str:	.asciiz "\nN.mec: "
str1:	.asciiz "\nPrimeiro Nome: "
str5:	.asciiz "\nUltimo Nome: "
str2:	.asciiz "\nNota: "
str3:	.asciiz "\n Insira os dados do aluno: "
str4:	.asciiz "\nMedia: "
str6:	.asciiz "\n"

	.eqv	print_string,4
	.eqv	print_char,11
	.eqv	print_int10,1
	.eqv	print_float,2
	.eqv	read_int,5
	.eqv	read_string,8
	.eqv	read_float,6
	.text

# read_data ##################
# $t0:	i
# $t1:	st
# $t2:	ns
read_data:
	move	$t1,$a0			# $t1 = st
	move	$t2,$a1			# $t2 = ns	
	li	$t0,0			# i=0
	
	mul	$t3,$t2,44		# $t3 = ns * 44
	
rd_for:	bge	$t0,$t3,rd_endf
	addu	$t5,$t0,$t1

	la	$a0,str
	li	$v0,print_string
	syscall
	
	li	$v0,read_int
	syscall
	sw	$v0,id_number($t5)	# st[i].id_number = read_int();	
	
	la	$a0,str1
	li	$v0,print_string
	syscall
	
	addiu	$a0,$t5,first_name
	li	$a1,17
	li	$v0,read_string
	syscall				# read_string(st[i].first_name, 17);
	
	la	$a0,str5
	li	$v0,print_string
	syscall
	
	addiu	$a0,$t5,last_name
	li	$a1,14
	li	$v0,read_string
	syscall				# read_string(st[i].last_name, 14);
	
	la	$a0,str2
	li	$v0,print_string
	syscall
	
	li	$v0,read_float
	syscall
	s.s	$f0,grade($t5)
	
	addiu	$t0,$t0,44
	j	rd_for
rd_endf:
	jr	$ra

# print_student ###############
#
print_student:
	move	$t0,$a0
	lw	$a0,id_number($t0)
	li	$v0,print_int10
	syscall
	
	addiu	$a0,$t0,first_name
	li	$v0,print_string
	syscall
	
	addiu	$a0,$t0,last_name
	li	$v0,print_string
	syscall
	
	l.s	$f12,grade($t0)
	li	$v0,print_float
	syscall
	
	jr	$ra

# max #####################
# pmax:	$v0
# p:	$t0
# st+ns:$t1
# max_grade:	$f2
# sum:	$f4

max:	
	la	$t0,max_grade
	l.s	$f2,0($t0)	# $f2 = -20.0

	mtc1	$0,$f4
	cvt.s.w	$f4,$f4		# $f4 = 0.0

	move	$t0,$a0		# p = st
	mul	$t1,$a1,44
	addu	$t1,$t1,$t0	# (st+ns)*44
m_for:	bge	$t0,$t1,m_endf
	
	l.s	$f6,grade($t0)	# $f6=p->grade
	add.d	$f4,$f4,$f6	# sum+=p->grade
	
m_if:	c.le.s	$f6,$f2
	bc1t	m_endif		# if(p->grade > max_grade)
	
	mov.d	$f2,$f6		# max_grade = p->grade;
	move	$v0,$t0		# pmax = p;
m_endif:
	addiu	$t0,$t0,44	# p++
	j	m_for		# }
m_endf:
	mtc1	$a1,$f8
	cvt.s.w	$f8,$f8
	div.d	$f0,$f0,$f8
	la	$t0,media
	s.s	$f0,0($t0)
	jr	$ra
	
	
	.globl	main
# Mapa de Registos
# $a0:	st_array
# $s0:	pmax
# $f12:	media

main:	
	addiu	$sp,$sp,-8	# reservar espaço na stack
	sw	$ra,0($sp)	# salvaguardar	$ra,$s0,$f20,$f22
	sw	$s0,4($sp)
			
	la	$a0,st_array	
	li	$a1,MAX_STUDENTS
	jal	read_data	# read_data( st_array, MAX_STUDENTS );
	
	la	$a0,st_array
	li	$a1,MAX_STUDENTS
	la	$a2,media
	jal	max
	move	$s0,$v0		# pmax = max( st_array, MAX_STUDENTS, &media );

	la	$a0,str4	
	li	$v0,print_string# print_string("\nMedia: ");
	syscall
	
	la	$t0,media	# print_float( media );
	l.s	$f12,0($t0)
	li	$v0,print_float
	syscall
	
	li	$a0,'\n'
	li	$v0,11
	syscall
	
	move	$a0,$s0
	jal	print_student	#print_student( pmax );
	
	li	$v0,0		#return 0;
	
	lw	$ra,0($sp)
	lw	$s0,4($sp)
	addiu	$sp,$sp,8
	
	jr	$ra		#}
	
	
	
	
	
	
