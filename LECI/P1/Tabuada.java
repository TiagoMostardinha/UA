import java.util.Scanner;

public class Tabuada {
	
	public static void main (String[] args) {
		//Scanner
		Scanner sc = new Scanner(System.in);
		
		//variables
		int N;
		
		//input
		System.out.print("Escolha um numero entre 0 e 100");
		N=sc.nextInt();
		
		//condicao
		System.out.println("Tabuada dos "+N);
		for(int i=1;i<=10;i++){
			System.out.printf("%2d * %2d = %4d",N,i,N*i);
			System.out.println();
		}
		
	}
}

