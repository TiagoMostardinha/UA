import java.util.Scanner;

public class F_NDias {
	
	public static void main (String[] args) {
		//Scanner
		Scanner sc =new Scanner(System.in);
		
		//variables + inputs
		int mes,ano;
		
		System.out.println("Mes e ano");
		mes=sc.nextInt();
		ano=sc.nextInt();
		NDias(mes,Bissexto(ano));
		
		
	}
	
	public static boolean Bissexto(int ano){
		boolean bi;
		
		if (ano%4==0 || ano%400==0){
			bi=true;
		}
		else{
			bi=false;
		}
		return bi;
	}
	
	public static void NDias(int m,boolean bi){
		switch(m){
			case 1:
			System.out.printf("%nO mes %d tem 31 dias",m);
			break;
			case 3:
			System.out.printf("%nO mes %d tem 31 dias",m);
			break;
			case 7:
			System.out.printf("%nO mes %d tem 31 dias",m);
			break;
			case 8:
			System.out.printf("%nO mes %d tem 31 dias",m);
			break;
			case 10:
			System.out.printf("%nO mes %d tem 31 dias",m);
			break;
			case 12:
			System.out.printf("%nO mes %d tem 31 dias",m);
			break;

			case 2:
			if (bi==true){
				System.out.printf("%nO mes %d tem 29 dias",m);
			}
			else{
				System.out.printf("%nO mes %d tem 28 dias",m);
			}
			break;
			
			case 4:
			System.out.printf("%nO mes %d tem 30 dias",m);
			break;
			case 6:
			System.out.printf("%nO mes %d tem 30 dias",m);
			break;
			case 9:
			System.out.printf("%nO mes %d tem 30 dias",m);
			break;
			case 11:
			System.out.printf("%nO mes %d tem 30 dias",m);
			break;
		}
	}
}

