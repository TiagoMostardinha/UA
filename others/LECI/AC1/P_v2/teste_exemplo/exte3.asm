# Mapa de Registo
# $t0:	p1
# $t1:	p2
# $t2: n_even
# $t3: n_odd
# $t4: p1Ultimo = p1+SIZE
# $t5: p2Ultimo = p2+SIZE
# $t6: *p1
# $t7: *p2

.data
.eqv	N,5			# .eqv	N,35
.eqv	print_int10,1
.eqv	read_int,5
A:	.space 20		#A:	.space 140
.align 2
.space 4
B:	.space 20		#B:	.space 140
.align 2
.text
.globl main

main:

la	$t0,A		# p1
la	$t1,B		# p2

li	$t2,0		# n_even = 0
li	$t3,0		# n_odd = 0

li	$t4,N
sll	$t4,$t4,2
addu	$t4,$t4,$t0	# p1Ultimo = p1+SIZE

forr:
bge	$t0,$t4,endforr	# for(p1 < a+N){

li	$v0,read_int
syscall
sw	$v0,0($t0)	# p1* = read_string

addiu	$t0,$t0,4	# p1++
j	forr
endforr:		# }

la	$t0,A

for:
bge	$t0,$t4,endfor
if:
lw	$t6,0($t0)	# *p1
rem	$t8,$t6,2	# *p1 % 2
beq	$t8,0,else	# if *p1 % 2 != 0 then
sw	$t6,0($t1)	# *p2 = *p1
addiu	$t1,$t1,4	# *p2++
addi	$t3,$t3,1	# n_odd++

j	endif
else:
addi	$t4,$t4,1	# n_even++
endif:
addi	$t0,$t0,4	# p1++
j	for
endfor:

la	$t1,B
move	$t5,$t3
sll	$t5,$t5,2
addu	$t5,$t5,$t1	# p2Ultimo = p2+n_odd 

forw:
bge	$t1,$t5,endforw

lw	$a0,0($t1)
li	$v0,print_int10	
syscall			# print_int10

li	$a0,','
li	$v0,11
syscall

addiu	$t1,$t1,4	# p2++
j	forw
endforw:


jr	$ra
