import java.util.Scanner;

public class Liquido {
	
	public static void main (String[] args) 
	{
		//Scanner
		Scanner sc = new Scanner(System.in);
		
		//variables
		double PrecoI,desconto,IVA,Total;
		
		//Ler inputs
		System.out.print("Preco Inicial: ");
		PrecoI=sc.nextDouble();
		System.out.print("Desconto a aplicar%: ");
		desconto=sc.nextDouble();
		System.out.print("Taxa IVA %: ");
		IVA=sc.nextDouble();
		
		//Calculo
		desconto=desconto/100;
		IVA=IVA/100;
		
		Total= PrecoI*(1-desconto);
		Total=Total*(1-IVA);
		
		System.out.printf("O valor liquido e %4.2f euros",Total);
		
		
	}
}

