public class F_Inicio {
	
	public static void main (String[] args) {
		//F Funcao 
		System.out.println(Funcao(2));
		
		//F Maior float
		double a=2.5;
		double b=7.1;
		double c=maxf(a,b);
		
		if (c!=10000){
			System.out.println("O Maior dos 2 e:"+c);
		}
		else{
			System.out.println("a=b="+a);
		}
			
				
	}
	//Resolver n=1/(1+(n*n))
	public static float Funcao(float n){
		n=1/(1+(n*n));
		return n;
	}
	
	//Maximo Real
	public static double maxf(double a,double b){
		double c=0;
		
		if (a<b){
			c=b;
		}
		if (a>b){
			c=a;
		}
		if (a==b){
			c=10000;
		}	
		return c;
	}
}

