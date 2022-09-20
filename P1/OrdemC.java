import java.util.Scanner;

public class OrdemC {
	
	public static void main (String[] args) 
	{
		//Scanner
		Scanner sc = new Scanner(System.in);
		
		//variables
		int n1,n2,n3,r;
		
		//inputs
		System.out.println("Escreva 3 numeros inteiros");
		n1=sc.nextInt();		
		n2=sc.nextInt();
		n3=sc.nextInt();
		
		//Condicao
		while (n1<n2 || n2<n3)
		{
			if (n2>n1)
			{
				r=n1;
				n1=n2;
				n2=r;	
			}
			if (n3>n2)
			{
				r=n2;
				n2=n3;
				n3=r;
			}
			
		}
		
		System.out.print(n3 +"<"+n2+"<"+n1);
		
	}
}

