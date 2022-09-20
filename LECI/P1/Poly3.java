import java.util.Scanner;

public class Poly3 {
	
	public static void main (String[] args) {
		//Scanner 
		Scanner sc = new Scanner(System.in);
		
		//variables
		double a,b,c,d,x;
		
		//input
		System.out.println("escreve os valores para a,b,c,d: ");
		a=sc.nextDouble();
		b=sc.nextDouble();
		c=sc.nextDouble();
		d=sc.nextDouble();
		x=sc.nextDouble();
		
		System.out.printf("o valor do polinomio e: %4.2f",Resolve(a,b,c,d,x));
	}
	public static double Resolve(double x,double y,double z,double w,double s){
		double out;
		out=x*(Math.pow(s,3))+y*(Math.pow(s,2))+z*s+w;
		return out;
	}
}

