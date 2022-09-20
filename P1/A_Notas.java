import java.util.Scanner;

public class A_Notas {
	
	public static void main (String[] args) {
		HNotas(readArray());
	}
	
	//#Read Array
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
	
	//#Histograma de Notas
	public static void HNotas(int[] ls){
		//Variables
		int c1=0;
		int c2=0;
		int c3=0;
		int c4=0;
		int c5=0;
		int c6=0;
		int c7=0;
		int c8=0;
		int c9=0;
		int c10=0;
		int c11=0;
		int c12=0;
		int c13=0;
		int c14=0;
		int c15=0;
		int c16=0;
		int c17=0;
		int c18=0;
		int c19=0;
		int c20=0;
		
		
		//Analisar o Array
		for (int i = 0; i < ls.length; i++){
			int m=0;
			m=ls[i];
			
			switch(m){
				case 1:
				c1++;
				break;
				case 2:
				c2++;
				break;
				case 3:
				c3++;
				break;
				case 4:
				c4++;
				break;
				case 5:
				c5++;
				break;
				case 6:
				c6++;
				break;
				case 7:
				c7++;
				break;
				case 8:
				c8++;
				break;
				case 9:
				c9++;
				break;
				case 10:
				c10++;
				break;
				case 11:
				c11++;
				break;
				case 12:
				c12++;
				break;
				case 13:
				c13++;
				break;
				case 14:
				c14++;
				break;
				case 15:
				c15++;
				break;
				case 16:
				c16++;
				break;
				case 17:
				c17++;
				break;
				case 18:
				c18++;
				break;
				case 19:
				c19++;
				break;
				case 20:
				c20++;
				break;
			}
			
		}
		System.out.println("Histograma de Notas");
		System.out.println("------------------------");
		System.out.println("1:"+graf(c1));
		System.out.println("2:"+graf(c2));
		System.out.println("3:"+graf(c3));
		System.out.println("4:"+graf(c4));
		System.out.println("5:"+graf(c5));
		System.out.println("6:"+graf(c6));
		System.out.println("7:"+graf(c7));
		System.out.println("8:"+graf(c8));
		System.out.println("9:"+graf(c9));
		System.out.println("10:"+graf(c10));
		System.out.println("11:"+graf(c11));
		System.out.println("12:"+graf(c12));
		System.out.println("13:"+graf(c13));
		System.out.println("14:"+graf(c14));
		System.out.println("15:"+graf(c15));
		System.out.println("16:"+graf(c16));
		System.out.println("17:"+graf(c17));
		System.out.println("18:"+graf(c18));
		System.out.println("19:"+graf(c19));
		System.out.println("20:"+graf(c20));
		
		
		
		
		
		
		
		
	}
	
	//#Grafico
	public static String graf(int c_){
		String linha="";
		for (int i = 0; i < c_; i++){
			linha+="*";
		}
		return linha;
	}
}

