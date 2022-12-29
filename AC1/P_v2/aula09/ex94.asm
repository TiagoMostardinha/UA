	.data
	.text
# max ################################
#
max:		# double max(double *p, unsigned int n) {
double max;
double *u = p+n–1;
max = *p++;
for(; p <= u; p++)
{
if(*p > max)
max = *p;
}
return max;
}
	
	.globl main
# Mapa de Registos
#
main: