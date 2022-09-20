import java.util.Scanner;

public class S_Leibniz {
	
	public static void main (String[] args) {
		//Scanner
		Scanner sc =new Scanner(System.in);
		
		//variables
		int n;
		double R=0;
		final double pi=3.141592653589793;
		
		//input
		System.out.println("Valor para n: ");
		n=sc.nextInt();
		
		//condicao
		for (int i=0;i<=n;i++){
			R=R+(Math.pow(-1,i)/(2*i+1));
		}
		System.out.println();
		
		System.out.printf("%4.15f",R);
		System.out.println();
		System.out.printf("%4.15f",pi/4);
		
	}
}

