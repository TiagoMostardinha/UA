import java.util.Scanner;

public class Char {
	
	public static void main (String[] args) 
	{
		//Scanner
		Scanner sc= new Scanner(System.in);
		
		//variables
		char a,A;
		
		//ler inputs
		System.out.print("Digite a letra");
		a=sc.nextLine().charAt(0);
		
		//m to M
		A=Character.toUpperCase(a);
		System.out.print(a+" para "+A);
		
		
	}
}

