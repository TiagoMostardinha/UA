import java.util.Scanner;

public class Relogio {
	
	public static void main (String[] args) 
	{
		//Scanner
		Scanner sc = new Scanner(System.in);
		
		//variaveis
		double resto_ss,resto_mm,hh,mm,ss;
		
		//ler input
		System.out.print("Tempo em segundos");
		ss=sc.nextDouble();
		
		//hh:mm:ss
		mm=ss/60;
		resto_ss=ss%60;
		ss=resto_ss;
		
		hh=mm/60;
		resto_mm=mm%60;
		mm=resto_mm;
		
		//Resultado
		System.out.printf("%4.0f : %4.0f : %4.0f",hh,mm,ss);
		
	}
}

