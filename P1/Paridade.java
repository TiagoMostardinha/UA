import java.util.Scanner;

public class Paridade {
	
	public static void main (String[] args) 
	{
		//Scanner
		Scanner sc = new Scanner(System.in);
		
		//variables
		int In;
		
		//Inputs
		System.out.println("Introduza um numero inteiro");
		In=sc.nextInt();
		
		//condicao
		if (In%2==0)
		{
			System.out.print(In+" e um numero par");
		}
		else
		{
			System.out.print(In+" e um numero impar");
		}
		
	}
}

