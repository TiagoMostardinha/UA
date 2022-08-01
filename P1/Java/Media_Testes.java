import java.util.Scanner;

public class Media_Testes {
	
	public static void main (String[] args) 
	{
		//Scanner
		Scanner sc = new Scanner(System.in);
		
		//variables
		double t1,t2,t3,media;
		
		//ler inputs
		System.out.println("Introduzir os testes");
		t1=sc.nextDouble();
		t2=sc.nextDouble();
		t3=sc.nextDouble();
		
		//media
		media=t1*0.2+t2*0.3+t3*0.5;
		
		System.out.printf("A media de Programacao I: %4.2f",media);
	}
}

