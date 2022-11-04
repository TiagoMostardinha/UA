# Mapa de Registos
# i: $t0
# v: $t1
# val: $t2
# *val[i]: $t3
# *val[i+SIZE/2]: $t4
# SIZE/2: $t5
# i*4: $t6
# i + SIZE/2: $t7

.data
.eqv	print_string,4
.eqv	print_int10,1
.eqv	print_char,11
.eqv	SIZE,8
str: .asciiz "Result is: "
val: .word	8,4,15,-1987,327,-9,27,16
.text
.globl main

main:
li	$t0,0			# i=0

li	$t5,SIZE
div 	$t5,$t5,2		# $t5 = SIZE/2

la	$t2,val			# $t2 = val
do:

sll	$t6,$t0,2		# i * 4 
addu	$t6,$t6,$t2		# val + i*4
lw	$t1,0($t6)		# v = val[i]

addu	$t7,$t0,$t5
sll	$t7,$t7,2
addu	$t7,$t7,$t2
lw	$t3,0($t7)		# val[i+SIZE/2]
sw	$t3,0($t6)		# val[i] = val[i+SIZE/2]

sw	$t1,0($t7)		

addi	$t0,$t0,1		#i++

blt	$t0,$t5,do
while:

la	$a0,str
li	$v0,print_string
syscall

li	$t0,0
la	$t2,val
dop:
sll	$t6,$t0,2
addu	$t6,$t6,$t2
lw	$a0,0($t6)
li	$v0,print_int10
syscall

li	$a0,','
li	$v0,11
syscall

addi	$t0,$t0,1
blt	$t0,SIZE,dop
whilep:

jr	$ra
