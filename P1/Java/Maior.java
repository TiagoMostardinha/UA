import java.util.Scanner;

public class Maior {
	
	public static void main (String[] args) 
	{
		//Scanner
		Scanner sc =new Scanner(System.in);
		
		//variables
		int n1,n2,n3;
		boolean c1,c2,c3;
		
		//inputs
		System.out.println("Introduza 3 numeros inteiros");
		n1=sc.nextInt();
		n2=sc.nextInt();
		n3=sc.nextInt();
		
		//condicoes
		c1=n1>n2;
		c2=n1>n3;
		c3=n2>n3;
		
		if (c1 ==true && c2==true)
		{
			System.out.print("O maior numero e o "+n1);
		}
		if (c1==false && c2==false)
		{
			if (c3==true)
			{
				System.out.print("o maior numero e o "+n2);
			}
			if (c3==false)
			{
				System.out.print("o maior numero e o "+n3);
			}
		}
		if (c1==true && c2==false)
		{
			System.out.print("o maior numero e o "+n3);
		}
		if (c1==false && c2==true)
		{
			System.out.print("o maior numero e o "+n2);
		}
		
	}
}

