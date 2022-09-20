import java.util.Scanner;

public class Turista {
	
	public static void main (String[] args) 
	{
		//Scanner
		Scanner sc=new Scanner(System.in);
		
		//variables
		double DiaA,nDias,Total;
		
		//Dias
		System.out.print("Estadia: ");
		nDias=sc.nextDouble();
		System.out.print("Quanto gastou no 1o dia: ");
		DiaA=sc.nextDouble();
		
		//Calculo
		Total=DiaA;
		
		for (int i=1;i<=nDias;i++)
		{
			DiaA=DiaA*1.20;	
			Total=Total+DiaA;
		}
		
		System.out.printf("Passado %4.0f dias, o turista gastou:%4.2f euros",nDias,Total);
		
		
	}
}

