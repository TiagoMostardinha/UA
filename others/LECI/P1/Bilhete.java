import java.util.Scanner;

public class Bilhete {
	
	public static void main (String[] args) 
	{
		//Scanner
		Scanner sc =new Scanner(System.in);
		
		//variables
		int i;
		
		//inputs
		System.out.println("Idade:");
		i=sc.nextInt();
		
		//condicao
		if  (i<=6)
		{
			System.out.print("Issento de pagamento");
		}
		if (i>6 && i<=12)
		{
			System.out.print("Bilhete de crianca");
		}
		if (i>12 && i<=65)
		{
			System.out.print("Bilhete normal");
		}
		if (i>65) 
		{
			System.out.print("Bilhete de 3a Idade");
		}
	}
}

