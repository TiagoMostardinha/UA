import java.util.Scanner;

public class Bissexto {
	
	public static void main (String[] args) 
	{
		//Scanner
		Scanner sc=new Scanner(System.in);
		
		//variables
		int d,m,ano;
		d=0;
		
		//input
		System.out.println("Mes e ano");
		m=sc.nextInt();
		ano=sc.nextInt();
		
		//condicao
		switch (m)
		{
			case 1:
			d=31;
			break;
			case 2:
			if (ano%4==0 || ano%400==0)
			{
				d=29;
			}
			else
			{
				d=28;
			}
			break;
			case 3:
			d=31;
			break;
			case 4:
			d=30;
			break;
			case 5:
			d=31;
			break;
			case 6:
			d=30;
			break;
			case 7:
			d=31;
			break;
			case 8:
			d=31;
			break;
			case 9:
			d=30;
			break;
			case 10:
			d=31;
			break;
			case 11:
			d=31;
			break;
			case 12:
			d=30;
			break;
			
		}
		System.out.print("o mes "+m+" do ano "+ano+" tem "+d+"dias");
		
	}
}

