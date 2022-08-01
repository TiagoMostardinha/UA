# typedef struct { 
# unsigned int id_number; 
# char first_name[18]; 
# char last_name[15]; 
# float grade; 
# } student; 

	.data
	.eqv	id_number,0
	.eqv	first_name,4
	.eqv	last_name,22
	.eqv	grade,40

st1:	.eqv	st1,0
st2:	.eqv	st2,44
st3:	.eqv	st3,88
st4:	.eqv	st4,132

st_array: .space 176	# static student st_array[MAX_STUDENTS];

	.eqv	print_string,4
	.eqv	print_char,11
	.eqv	print_intu,36
	.eqv	print_float,2
	.eqv	read_int,5
	.eqv	read_string,8
	.eqv	read_float,6
	.eqv	MAX_STUDENTS,4
max_grade:.float -20.0
media:	.space	4
sum:	.float 0.0
str:	.asciiz "\nN.mec: "
str1:	.asciiz "\nPrimeiro Nome: "
str5:	.asciiz "\nUltimo Nome: "
str2:	.asciiz "\nNota: "
str3:	.asciiz "\n Insira os dados do aluno: "
str4:	.asciiz "\nMedia: "
str6:	.asciiz "\n"
	
	.text
	.globl read_data
# Mapa de Registos
# $t0 - i



read_data:	# void read_data(student *st, int ns) { 
	li	$t0,0			# int i = 0; 
	move	$t1,$a0
	mul	$t2,$a1,44		
	
forrd:	bge	$t0,$t2,endforrd	# for(i=0; i < ns; i++) { 
	
	addu	$t3,$t1,$t0
	
	la	$a0,str
	li	$v0,print_string	# print_string("N. Mec: "); 
	syscall
	
	li	$v0,read_int
	syscall
	sw	$v0,id_number($t3)	# st[i].id_number = read_int(); 
	
	la	$a0,str1		
	li	$v0,print_string	# print_string("Primeiro Nome: "); 
	syscall
	
	addiu	$a0,$t3,first_name
	li	$a1,18			# read_string(st[i].first_name, 17); 
	li	$v0,read_string
	syscall
	#sw	$a0,first_name($t3)
	
	la	$a0,str5
	li	$v0,print_string		# print_string("Ultimo Nome: "); 
	syscall
	
	addiu	$a0,$t3,last_name	# read_string(st[i].last_name, 14); 
	li	$a1,15
	li	$v0,read_string
	syscall
	#sw	$a0,last_name($t3)
	
	la	$a0,str2		
	li	$v0,print_string	# print_string("Nota: "); 
	syscall
	
	li	$v0,read_float
	syscall
	s.s	$f0,grade($t3)		# st[i].grade = read_float(); 
	
	addi	$t0,$t0,44
	j	forrd			# }
endforrd:
	jr	$ra



###################
# Mapa de Registo
# 


max:		# student *max(student *st, int ns, float *media) { 
# student *p; 
# student *pmax; 
	move	$t0,$a0		# $t0 = st
	la	$f6,max_grade	# float max_grade = -20.0; 
	la	$f5,sum		# float sum = 0.0; 
	move	$t3,$a1		# $t3 = st
	mul	$t6,$t3,44	# $t6 = st * 44
	
	addu	$t2,$t6,$t0	# $t2 = st + ns
	li	$t4,0
	move	$t5,$a2		# $t5 = media
	
form:	bge	$t6,$t2,endfm	# for(p = st; p < (st + ns); p++) { 
	l.s	$f6,0($t0)	# sum += p->grade; 
	add.s	$f5,$f5,$f6
ifm:	c.lt.s	$f6,$f4		# if(p->grade > max_grade) { 
	bc1t	endifm
	
	mov.s	$f4,$f6		# max_grade = p->grade; 
	move	$t4,$t0		# pmax = p; 
	
endifm:				# } 
	addi	$t0,$t0,44
	j	form
	
endfm:				# } 
	mtc1	$t3,$f7		# 
	cvt.s.w	$f7,$f7		# (float)ns; 
	div.s	$f5,$f7		# *media = sum / (float)ns; 
	s.s	$f7,0($t5)
	
	move	$v0,$t4		# return pmax; 
# }


