import java.util.*;

public class TP_Final {

	static double ls[];
	static int count =0;

	public static Scanner sc = new Scanner(System.in);
	
	public static void main (String[] args) {	
		System.out.print("CM: ");
		int CM;
		do{
			CM = sc.nextInt();
		}while(CM<0);
		
		ls=readArray(CM);
		
		System.out.println("MAX: "+Max(ls));
		////////////////
		printArray("A: ",ls);
		printArray("B: ",Array_B(ls));
		Sinal(ls);
	}
	
	//#1 readArray
	public static double[] readArray(int CM){
		ls = new double[CM];
		
		for (int i = 0; i < ls.length; i++){
			System.out.printf("ls[%d]:",i);
			ls[i]=sc.nextDouble();
		}
		return ls;
	}
	
	//#2 Max
	public static double Max(double[] ls){
		double max=0;
		for(int i=0;i<ls.length;i++){
			if(max<ls[i]){
				max=ls[i];
			}
		}
		return max;
	}
	
	//#3 ArrayB
	public static double[] Array_B(double a[]){
		double b[] = new double[(a.length-1)];
		
		for(int i =0;i<b.length;i++){
			b[i]=a[i+1]-a[i];
		}
		return b;
	}
	//#4 Sinal
	public static void Sinal(double a[]){
		for (int i = 0; i < a.length-1; i++){
			if(a[i]*a[i+1]<0){
				count++;
				System.out.printf("Troca em a[%d]\n",(i+1));
			}
		}
		System.out.print("Quantas vezes troca de sinal "+ count);
	}
	
	//#5 printArray
	public static void printArray(String mensagem,double ls[]){
		System.out.print(mensagem);
		for (int i = 0; i < ls.length; i++){
			System.out.printf("%f ",ls[i]);
		}
		System.out.println();
		
	}
}

