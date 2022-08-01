import java.util.Scanner;

public class Num_Perfeito {
	
	public static void main (String[] args) {
		//Scanner
		Scanner sc = new Scanner(System.in);
		
		//variable
		int val,n=0,S=0;
		
		//inputs
		System.out.println("Numero a introduzir");
		val=sc.nextInt();
		while(val<0){
			System.out.println("Novamente");
			val=sc.nextInt();
		}
		while(S<val){
			n=n+1;
			S=S+n;
			if(val == S){
				System.out.print("E perfeito");
			}
		}
		if(S>val && val != S){
				System.out.print("Nao e perfeito");
			}
	}
}

