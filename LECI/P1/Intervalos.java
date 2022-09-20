import java.util.Scanner;

public class Intervalos {
	
	public static void main (String[] args) 
	{
		//Scanner
		Scanner sc=new Scanner(System.in);
		
		//variables
		long t1,t2,t3,t4;
		boolean TF;
		
		//ler inputs
		System.out.println("Intervalo A:");
		t1=sc.nextInt();
		t2=sc.nextInt();
		System.out.println("A("+t1+","+t2+")");
		System.out.println("Intervalo B:");
		t3=sc.nextInt();
		t4=sc.nextInt();
		System.out.println("B("+t3+","+t4+")");
		
		//Condicoes
		if ((t3>t1 && t3<t2)||(t4>t1 && t4<t2))
		{
			TF=true;
		}
		else
		{
			TF=false;			
		}
		
		System.out.print(TF);
	}
}

