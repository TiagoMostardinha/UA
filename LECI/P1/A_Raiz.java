import java.util.Scanner;

public class A_Raiz {
	
	public static void main (String[] args) {
		//Scanner
		Scanner sc = new Scanner(System.in);
		
		//#1 Definir ax^2+bx+c && [x,y]
		System.out.print("a,b,c: ");
		double a = sc.nextDouble();
		double b = sc.nextDouble();
		double c = sc.nextDouble();
		
		double x=sc.nextDouble();
		double y=sc.nextDouble();
		
		double np = sc.nextDouble();
		
		do{
		System.out.println("[x,y]: ");
		x = sc.nextDouble();
		y = sc.nextDouble();
		}while(y<=x);
		
		Raizes(a,b,c,x,y,np);	
	}
	
	
	public static void Raizes(double a,double b,double c,double x,double y,double np){
		double inc =(x-y)/(np-1);
		int raizes=0;
		
		for (double i = x; x<=y;i+=inc){
			double eq = a*Math.pow(x,2)+ b*x+c;
			double eqi = a*Math.pow(x+inc,2)+ b*(x+inc)+c;
			if (eq*eqi<0){
				
				raizes++;
				System.out.println("Raiz: "+(i+inc));
			}
		}
		System.out.println("Foram escontradas "+raizes+" no intervalo indicado");
	}
}

