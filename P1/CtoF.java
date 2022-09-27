import java.util.Scanner;

public class CtoF {
	
	public static void main (String[] args) 
	{
		//Scanner
		Scanner sc=new Scanner(System.in);
		
		//variables
		double In,Out;
		char cf;
		boolean a=true;
		Out=0;
		
		//input
		System.out.print("temperatura e escala(C ou F) ");
		In=sc.nextDouble();
		cf=sc.next().charAt(0);
		
		//condicao
		if (cf=='C')
		{
			Out=1.8*In+32;	
			a=true;
		}
		if (cf=='F')
		{
			Out=(In-32)/1.8;
			a=false;
		}
		
		if (a==true){
			cf='C';
		}
		else{
			cf='F';
		}
		
		System.out.printf("%4.2f",Out,cf);
	}
}

