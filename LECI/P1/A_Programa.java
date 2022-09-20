import java.util.Scanner;

public class A_Programa {
	
	public static void main (String[] args) {
		//Scanner
		Scanner sc= new Scanner(System.in);
		
		System.out.printf("1 - Ler uma sequencia de numeros inteiros%n2 - Escrever a sequencia%n3 - Calcular o maximo da sequencia%n4 - Calcular o minimo da sequencia%n5 - Calcular a media da sequencia%n6 - Detetar se e uma sequencia so constituida por numeros pares%n7 - Opcoes%n10 - Terminar o programa%n");
		
		int m=0;
		int ls[] = readArray();
		
		while(m != 10){
			System.out.print("Comando: ");
			m =sc.nextInt();
			switch(m){
				case 1:
				ls=readArray();
				break;
				case 2:
				printArray(ls);
				break;
				case 3:
				System.out.println("MAX:"+Max(ls));
				break;
				case 4:
				System.out.println("MIN:"+Min(ls));
				break;
				case 5:
				System.out.println("MEDIA ARRAY: "+Media(ls));
				break;
				case 6:
				NPares(ls);
				break;				
				case 10:
				break;
			}
			
		}
		
	}
	
	
	
	
	
	
	
	
	
	
	
	//#1 Read Array
	public static int[] readArray(){
		//Scanner
		Scanner sc = new Scanner(System.in);
		
		//variables + inputs
		System.out.println("Capacidade Maxima");
		int CM = sc.nextInt();
		
		int[] ls = new int[CM];
		
		for(int i =0; i<CM;i++){
			System.out.printf("Dado %d: ",i+1);
			ls[i]=sc.nextInt();
		}
		return ls;
	}
	
	
	//#2 Print Array
	public static void printArray(int[] ls){
		for(int i = 0; i <ls.length;i++){
			System.out.printf("%d ",ls[i]);
		}
		System.out.println();
	}
	
	
	//#3 Maximo
	public static int Max(int[] ls){
		int mem=0;
		for(int i=0;i<ls.length;i++){
			if(mem<ls[i]){
				mem=ls[i];
			}
		}
		return mem;
	}
	
	//#4 Minimo
	public static int Min(int[] ls){
		int mem=99999999;
		for(int i=ls.length-1;i>=0;i--){
			if(mem>ls[i]){
				mem=ls[i];
			}
		}
		return mem;
		
	}
	
	//#5 Media
	public static double Media(int[] ls){
		double media=0;
		for(int i = 0; i <ls.length;i++){
			media+=ls[i];
		}
		media=media/ls.length;
		return media;
	}
	
	//#6 NPares
	public static void NPares(int[] ls){
		int cont=0;
		for(int i = 0; i <ls.length;i++){
			if(ls[i]%2==0){
				cont++;
			}
		}
		if(cont==ls.length){
			System.out.println("ARRAY constituido so pares");
		}
		else{
			System.out.println("ARRAY w par e impar");
		}
	}
	
		
}


