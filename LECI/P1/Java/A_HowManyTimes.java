import java.util.Scanner;

public class A_HowManyTimes {
	
	public static void main (String[] args) {
		//Scanner
		Scanner sc = new Scanner(System.in);
		
		//variables
		System.out.println("Capacidade Maxima");
		int CM=sc.nextInt();

		int ls[]=new int[CM];
		
		for(int i =0;i<ls.length;i++){
			System.out.println("Dados: ");
			ls[i]=sc.nextInt();
		}
		PrintA(ls);
		System.out.println(Igual(ls));
	}
	
	public static void PrintA(int ls[]){
		for(int i=0;i<ls.length;i++){
			System.out.printf("%d ",ls[i]);
		}
	}
	
	public static int Igual(int ls[]){
		Scanner sc = new Scanner(System.in);
		System.out.println("Numero q poderá ser repetido");
		int k=sc.nextInt();
		int count =0;
		
		for(int i =0; i<ls.length;i++){
			if (k==ls[i]){
				count +=1;
			}
		}
		return count;
	}
}

