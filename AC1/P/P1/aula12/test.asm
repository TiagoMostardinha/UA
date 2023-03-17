.data
	.eqv print_string,4
	.eqv print_char,11
	.eqv print_intu,36
	.eqv print_float,2
	.eqv read_int,5
	.eqv read_string,8
	.eqv read_float,6
	.eqv MAX_STUDENTS,4
max_grade:
	.float -20.0

sum:	.float 0.0
	
	.eqv id_number,0
	.eqv first_name,4
	.eqv last_name,22
	.eqv grade,40
	
str:	.asciiz "\nN.mec: "
str1:	.asciiz "\nPrimeiro Nome: "
str5:	.asciiz "\nUltimo Nome: "
str2:	.asciiz "\nNota: "
str3:	.asciiz "\n Insira os dados do aluno: "
str4:	.asciiz "\nMedia: "
str6:	.asciiz "\n"
	.align 3
stg:	
	.space 176
	
	.align 2
media:
	.space 4
	
	.text
	.globl main
	
read_data:
	li $t0,0
	move $t1,$a0
	mul $t2,$a1,44
forrd:	
	bge $t0,$t2,endfrd
	
	addu $t3,$t0,$t1
	
	la $a0,str
	li $v0,4
	syscall
	
	li $v0,5
	syscall
	sw $v0,id_number($t3)
	
	la $a0,str1
	li $v0,4
	syscall
	
	addiu $a0,$t3,first_name
	li $a1,18
	li $v0,8
	syscall
	
	la $a0,str5
	li $v0,4
	syscall
	
	addiu $a0,$t3,last_name
	li $a1,15
	li $v0,8
	syscall
	
	la $a0,str2
	li $v0,4
	syscall
	
	li $v0,6
	syscall
	s.s $f0,grade($t3)
	
	addi $t0,$t0,44
	
	j forrd
endfrd:
	jr $ra


max:
	move $t0,$a0
	l.s $f4,max_grade
	l.s $f5,sum
	move $t3,$a1
	mul $t6,$t3,44
	#mov.s $f6,$f
	addu $t2,$t0,$t6
	li $t4,0
	move $t5,$a2
form:
	bge $t0,$t2,endfm
	
	l.s $f6,grade($t0)
	add.s $f5,$f5,$f6
ifm:	
	c.lt.s $f6,$f4
	bc1t endifm
		
	mov.s $f4,$f6
	move $t4,$t0
endifm:
	
	addi $t0,$t0,44
	j form
endfm:

	mtc1 $t3,$f7
	cvt.s.w $f7,$f7
	div.s $f7,$f5,$f7
	s.s $f7,0($t5)
	
	move $v0,$t4
	jr $ra
	
	
print_student:
	move $t0,$a0
	
	la $a0,str6
	li $v0,4
	syscall
	
	lw $a0,id_number($t0)
	li $v0,36
	syscall
	
	la $a0,str6
	li $v0,4
	syscall
	
	addi $a0,$t0,first_name
	li $v0,4
	syscall
	
	la $a0,str6
	li $v0,4
	syscall
	
	addi $a0,$t0,last_name
	li $v0,4
	syscall
	
	la $a0,str6
	li $v0,4
	syscall
	
	l.s $f12,grade($t0)
	li $v0,print_float
	syscall
	
	jr $ra
	
main:	
	addiu $sp,$sp,-16
	sw $ra,0($sp)
	sw $s0,4($sp)
	s.s $f20,8($sp)
	s.s $f21,12($sp)
	
	la $s0,stg
	
	la $a0,stg
	li $a1,MAX_STUDENTS
	jal read_data
	
	la $a0,stg
	li $a1,MAX_STUDENTS
	la $a2,media
	jal max
	move $s0,$v0
	#mov.s $f21,$f1
	
	la $a0,str4
	li $v0,4
	syscall
	
	l.s $f12,media
	li $v0,2
	syscall
	
	#move $a0,$s0
	#lw $a0,0($s0)
	#li $v0,36
	#syscall
	
	move $a0,$s0
	jal print_student
	
	li $v0,0
	
	lw $ra,0($sp)
	lw $s0,4($sp)
	l.s $f20,8($sp)
	l.s $f21,12($sp)
	addiu $sp,$sp,16
	
	jr $ra