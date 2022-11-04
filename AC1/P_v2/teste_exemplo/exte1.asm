# Mapa de Registo 
# n: $t0
# val: $t1
# min: $t2
# max: $t3

.data
.eqv	print_int10,1
.eqv	print_string,4
.eqv	read_int,5
str1:	.asciiz  "Digite ate 10 int"
str2:	.asciiz "max/min: "
.text
.globl main

main:
li	$t0,0			# n = 0

lui	$t2,0x7FFF
ori	$t2,$t2,0xFFFF		# min = 0x7fffffff


lui	$t3,0x8000
ori	$t3,$t3,0x0000		# min = 0x80000000

la	$a0,str1
li	$v0,print_string
syscall				# print_string

do:
li	$v0,read_int
syscall
move	$t1,$v0			# val = read_int

if:
beq	$t1,0,endif		# if val != 0

ifM:
ble	$t1,$t3,endifM		# if val > max
move	$t3,$t1			# max = val

endifM:
ifm:
bge	$t1,$t2,endifm		# if val < min
move	$t2,$t1			# min = val

endifm:
endif:
addi	$t0,$t0,1		# n++

slti	$t4,$t0,10
sne	$t5,$0,$t1
and	$t4,$t4,$t5
bne	$t4,0,do		# while n < 20 && val != 0
while:

la	$a0,str2
li	$v0,print_string
syscall				# print_string

move	$a0,$t3
li	$v0,print_int10
syscall				# print_int10(max)

li	$a0,':'
li	$v0,11
syscall				# print_char(':')

move	$a0,$t2
li	$v0,print_int10
syscall				# print_int10(min)

jr	$ra


	

