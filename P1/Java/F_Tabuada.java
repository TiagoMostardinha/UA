import java.util.Scanner;

public class F_Tabuada {
	
	public static void main (String[] args) {
		//Scanner
		Scanner sc=new Scanner(System.in);
		//variables + input
		System.out.println("Tabuada de....");
		int N =sc.nextInt();
		Tabuada(N);
	}
	
	public static void Tabuada(int N){
		for (int i=1;i <=10;i++){
			int m=N*i;
			System.out.printf("%n %d*%d=%d",N,i,m);
		}
	}
}

