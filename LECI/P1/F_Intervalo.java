import java.util.Scanner;

public class F_Intervalo {
	
	public static void main (String[] args) {
		//Scanner
		Scanner sc=new Scanner(System.in);
	
		//variables
		int max,min;
		
		//inputs
		System.out.println("Min and Max");
		min=sc.nextInt();
		max=sc.nextInt();
		//Recall Functions
		System.out.println("O numero escolhido foi:"+getInRange(min,max,choose(min,max)));
		
		
		
	}
	public static int choose(int min,int max){
		//Scanner
		Scanner sc=new Scanner(System.in);
		
		int e;
		do{
			System.out.printf("Escolha um numero entre %d %n",max-min);
			e=sc.nextInt();
		}while(e<min && e>max);
		return e;
	}
	
	public static int getInRange(int min,int max,int e){
		int out;
		out=min+e;
		return out;
	}
}

