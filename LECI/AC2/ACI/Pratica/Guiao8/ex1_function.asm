# Mapa de registos
# res: $v0
# s: $a0
# *s: $t0
# digit: $t1
# Sub-rotina terminal: não devem ser usados registos $sx 

atoi:		# unsigned int atoi(char *s) { 
	li	$v0,0		# unsigned int digit, res = 0; 
	
while:	lb	$t0,0($a0)	# $t0 = s[0]
	blt	$t0,'0',endw	
	bgt	$t0,'9',endw	# while( (*s >= '0') && (*s <= '9') ) { 
	
	addi	$t1,$t0,-0x30	# digit = *s++ - '0'; 
	addiu	$a0,$a0,1	#*s++
	
	mul	$v0,$v0,10	# res = res*10
	add	$v0,$v0,$t1	# res = 10 * res + digit; 
	
	j	while		# } 
endw:
	jr	$ra		# return res; 
# } 