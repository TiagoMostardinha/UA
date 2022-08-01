import java.util.Scanner;

public class F_Positivo {
	
	public static void main (String[] args) {
		System.out.println(Pos());
	}
	public static int Pos(){
		//Scanner
		Scanner sc=new Scanner(System.in);
		int x;
		do{
			System.out.println("Introduza um numero positivo");
			x=sc.nextInt();
			
		}while(x<0);
		return x;
	}
}

