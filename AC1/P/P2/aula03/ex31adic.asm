# void main(void) {
# unsigned int gray, bin, mask;
# print_string("Introduza um numero: ");
# gray = read_int();
# mask = gray >> 1;
# bin = gray;
# while(mask != 0) {
#    bin = bin ^ mask;
#   mask = mask >> 1;
# }
# print_string("\nValor em código Gray: ");
# print_int16(gray);
# print_string("\nValor em binario: ");
# print_int16(bin);
# }

# Mapa Registo
# $t0: gray
# $t1: bin
# $t2: mask

    	.data
    	.eqv	print_string,4
    	.eqv	read_int,5
    	.eqv	print_int16,34
s1: 	.asciiz	"Introduza um numero: "
s2: 	.asciiz	"\nValor em codigo Gray: "
s3: 	.asciiz	"\nValor em binario: "
    	.text
    	.globl	main
    	
main:	la	$a0,s1
	li	$v0,print_string
	syscall				# print_string
	
	li	$v0,read_int
	syscall
	move	$t0,$v0			# gray = read_int
	
	srl	$t2,$t0,1		# mask = gray >> 1;
	move	$t1,$t0			# bin = gray;
	
while:	beq	$t2,0,endw		# while(mask != 0) {
	xor	$t1,$t1,$t2		#    bin = bin ^ mask;
	srl	$t2,$t2,1		#   mask = mask >> 1;
endw:					# }

	la	$a0,s2
	li	$v0,print_string	
	syscall				# print_string
	
	move	$a0,$t0
	li	$v0,print_int16
	syscall				# print_int16(gray)
	
	la	$a0,s3
	li	$v0,print_string	
	syscall				# print_string
	
	move	$a0,$t1
	li	$v0,print_int16
	syscall				# print_int16(bin)
	
	jr	$ra

