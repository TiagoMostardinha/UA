import java.util.Scanner;

public class Triangulo {
	
	public static void main (String[] args) 
	{
		//Scanner
		Scanner sc = new Scanner(System.in);
		
		//variaveis
		double A,B,C,A2,B2,ang;
		
		//ler inputs
		System.out.println("Dimensoes dos catetos A,B");
		A=sc.nextDouble();
		B=sc.nextDouble();

		//hipotenusa
		A=Math.pow(A,2);
		B=Math.pow(B,2);
		
		C=Math.sqrt(A+B);
		System.out.printf("Hipotenusa: %4.2f",C);
		System.out.println();
		
		
		//angulo
		ang=Math.toDegrees(Math.asin(A/C));	
		System.out.format("Angulo A/C:%4.2f",ang);

	}
}

