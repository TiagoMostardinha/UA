import java.util.Scanner;

public class Fatorial {
	
	public static void main (String[] args) {
		//Scanner
		Scanner sc = new Scanner(System.in);
		
		//variable
		int M=11,n=1;
		
		//inputs
		while(M>10){
			System.out.println("Introduza um numero entre 0 a 10");
			M=sc.nextInt();
		}
		//condicao
		for (int i=1;i<=M;i++){
			System.out.printf("%2d! = %2d",i,i*n);
			n=i*n;
			System.out.println();
			
		}
		
		
		
	}
}

