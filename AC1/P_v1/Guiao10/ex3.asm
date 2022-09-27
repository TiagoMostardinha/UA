	.data
	.eqv SIZE, 11
	.eqv print_string, 4
	.eqv print_double, 3
	.eqv read_double, 7
arr:	.space	88
str1:	.asciiz "\nTemp em Fahrenheit: "
str2:	.asciiz "\nValor maximo: "
str3:	.asciiz ", "
str4:	.asciiz "\nConteudo do array:\n"
str5:	.asciiz "\nValor max: "
str6:	.asciiz "\nValor medio: "
str7:	.asciiz "\nMediana: "
str8:	.asciiz "\nVariancia: "
str9:	.asciiz "\nDesvio Padrao: "
	.text
	.globl main

# Mapa de Registos
# $s0 - i
# $s1 - &arr
# $s2 - &(arr[n])		
main:	
	addiu	$sp,$sp,-12
	sw	$ra,0($sp)
	sw	$s0,0($sp)
	sw	$s1,0($sp)
	
	li	$s0,0
	la	$s1,arr
	
for:	
	
