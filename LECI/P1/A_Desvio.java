import java.util.*;

public class A_Desvio {
	
	static int CM;
	static double ls[] = new double[CM];
	
	public static void main (String[] args) {
		//Scanner
		Scanner sc = new Scanner(System.in);
		
		//variables
		System.out.print("CM: ");
		CM = sc.nextInt();
		
		ls=readArray(CM);
		
		System.out.printf("O desvio e de: %4.6f%n",desvio(somatorio_2(ls,media_ls(ls)),CM));
		
		
		//######
		printArray(ls);
		System.out.printf("%nMEDIA: %4.4f ",media_ls(ls));
		//######
	}
	
	//#1 readArray
	public static double[] readArray(int CM){
		//Scanner
		Scanner sc = new Scanner(System.in);
		
		double ls[] = new double[CM];
		for (int i = 0; i < CM; i++){
			System.out.printf("ls[%d]: ",i);
			ls[i]=sc.nextDouble();
		}	
		return ls;
	}
	//#2 printArray
	public static void printArray(double ls[]){
		for(int i = 0; i <ls.length;i++){
			System.out.printf("%4.2f ",ls[i]);
		}
	}	
	
	//#3 media_ls
	public static double media_ls(double ls[]){
		double sum = 0;
		
		for(int i = 0; i <ls.length;i++){
			sum += ls[i];
		}
		return sum/(ls.length);
	}
	
	//#4 Somatorio
	public static double somatorio_2(double ls[], double media){
		int som = 0;
		
		for (int i = 0; i < ls.length; i++){
			som+=Math.pow((ls[i]-media),2);
		}
		return som;	
	}
	
	//#5 Desvio
	public static double desvio(double som,int CM){
		double s = Math.sqrt(som/CM);
		return s;
	}
	
}
