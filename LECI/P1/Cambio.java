import java.util.Scanner;

public class Cambio {
	
	public static void main (String[] args) 
	{
		//Scanner
		Scanner sc = new Scanner(System.in);
		
		//Variaveis
		double quantia;
		double taxa;
		double conv;
		
		//Ler inputs
		System.out.print("Quantia");
		quantia= sc.nextDouble();
		System.out.print("Taxa de Conversao %");
		taxa=sc.nextDouble();
		
		//Taxa
		taxa=taxa/100;
		
		//Calculos/Cambio
		conv=taxa*quantia;
		
		//Resultado
		System.out.printf("%4.1f euros Equivalem a %4.1f\n $",quantia,conv);
		
	}
}

