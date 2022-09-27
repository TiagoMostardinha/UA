import java.util.Scanner;

public class Pares_Soma {
	
	public static void main (String[] args) {
		//Scanner
		Scanner sc =new Scanner(System.in);
		
		//variables
		int par=1,N,S=0;
		
		//inputs
		System.out.println("Numero de pares ");
		N=sc.nextInt();
		while(N>1000){
			System.out.println("Novamente");
			N=sc.nextInt();
		}
		
		System.out.print("Pares: ");
		while(par<=N){
			par=par+1;
			if(par%2==0){
				System.out.print(par+" ");
				S=S+par;
				N=N+1;
			}
		}
		System.out.println();
		System.out.print("Soma dos pares: "+S);
		
	}
}

