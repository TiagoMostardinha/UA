import java.util.Scanner;

public class Nota_Final {
	
	public static void main (String[] args) 
	{
		//Scanner
		Scanner sc= new Scanner(System.in);
		
		//variables
		double t1,t2,t3,nota;
		
		//Inputs
		System.out.println("1o Teste:");
		t1=sc.nextDouble();
		System.out.println("2o Teste:");
		t2=sc.nextDouble();
		System.out.println("3o Teste:");
		t3=sc.nextDouble();
		
		//condicao
		nota=0.2*t1+0.3*t2+0.5*t3;
		
		if (nota>9.5)
		{
			System.out.printf("Passou com %4.2f",nota);
		}
		else
		{
			System.out.printf("Chumbou com %4.2f",nota);
		}
	}
}

