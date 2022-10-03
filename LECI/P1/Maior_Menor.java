import java.util.Scanner;

public class Maior_Menor {
	
	public static void main (String[] args) 
	{
		//Scanner
		Scanner sc=new Scanner(System.in);
		
		//variables
		double n1,n2;
		
		//Inputs
		System.out.println("n1:");
		n1=sc.nextDouble();
		System.out.println("n2:");
		n2=sc.nextDouble();
		
		//condicao
		if (n1>n2)
		{
			System.out.printf("o maior numero e %4.3f",n1);
		}
		if (n1<n2)
		{
			System.out.printf("o maior numero e %4.3f",n2);
		}
		else
		{
			System.out.print("os numeros sao iguais");
		}
	}
}

