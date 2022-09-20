import java.util.Scanner;

public class A_Inverter {
	
	public static void main (String[] args) {
		//Scanner
		Scanner sc=new Scanner(System.in);
		
		//variable + inputs
		System.out.println("Capacidade Maxima: ");
		int N=sc.nextInt();
		
		//Array
		int ls[] = new int[N];
		

		for(int i = 0; i < ls.length; i++){
			System.out.print("Valor para posicao" + i);
			ls[i] = sc.nextInt();
		}
		
		for(int i = ls.length-1; i >= 0; i--){
			System.out.printf("ls[%d] contem o valor %d\n", i, ls[i]);
		}
		
		
	}
}

