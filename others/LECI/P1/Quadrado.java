import java.util.Scanner;

public class Quadrado {
	
	public static void main (String[] args) 
	{
		//Scanner
		Scanner sc= new Scanner(System.in);
		
		//variables
		double p1x,p1y,p2x,p2y,p3x,p3y,p4x,p4y,P12,P23,P34,P41;
		
		//inputs
		System.out.println("Coordenadas P1");
		p1x=sc.nextDouble();
		p1y=sc.nextDouble();
		System.out.println("Coordenadas P2");
		p2x=sc.nextDouble();
		p2y=sc.nextDouble();
		System.out.println("Coordenadas P3");
		p3x=sc.nextDouble();
		p3y=sc.nextDouble();
		System.out.println("Coordenadas P4");
		p4x=sc.nextDouble();
		p4y=sc.nextDouble();
		
		//Condicao
		//^2
		p1x=Math.pow(p1x-p2x,2);
		p1y=Math.pow(p1y-p2y,2);
		p2x=Math.pow(p2x-p3x,2);
		p2y=Math.pow(p2y-p3y,2);
		p3x=Math.pow(p3x-p4x,2);
		p3y=Math.pow(p3y-p4y,2);
		p4x=Math.pow(p4x-p1x,2);
		p4y=Math.pow(p4y-p1y,2);
		//^1/2
		P12=Math.sqrt(p1x+p1y);
		P23=Math.sqrt(p2x+p2y);
		P34=Math.sqrt(p3x+p3y);
		P41=Math.sqrt(p4x+p4y);
		
		if (P12==P23 && P23==P34 && P34==P41)
		{
			System.out.print("E um quadrado");
		}
		else 
		{
			System.out.print("nao e um quadrado");
		}
	}
	
}

