import java.io.*;

import java.util.*;

public class Teste_Pratico_2 {
	
	public static void main (String[] args) {
		//Scanner
		Scanner sc = new Scanner(System.in);
		
		System.out.print("Length do Array: ");
		int CM = sc.nextInt();
		
		//Sub_D(derivada(readArray(CM)));
		
		double der[] = null;
		der=derivada(readArray(CM));
		
		Sub_D(der);
		formar_Dev(der);
		
		
		zeros(der);
		//########
		//System.out.println(Arrays.toString(readArray(CM)));
		
		//########
	}
	
	//#1 readArray
	public static double[] readArray(int CM){
		//Scanner
		Scanner sc = new Scanner(System.in);
		
		double ls[] = new double[CM]; //criei array de length CM
		
		for (int i = 0; i < CM; i++){
			System.out.printf("ls[%d]: ",i);
			ls[i] = sc.nextDouble();
		}
		return ls;
	}
	
	//#2 Derivada
	public static double[] derivada(double a[]){
		double b[] = null;
		b=a;
		System.out.println("b: "+Arrays.toString(b));
		
		for (int i = 0; i < b.length; i++){
			b[i]=a[i]-1;
		}
		System.out.println("b: "+Arrays.toString(b));
		return b;
	}
	
	//#3 substituir derivada
	public static void Sub_D(double b[]){
		//Scanner
		Scanner sc = new Scanner(System.in);
		double eq=0;	
		
		System.out.print("Valor para x: ");
		double x = sc.nextDouble();
		
		for(int i = 0; i < b.length; i++){
			eq+=b[i]*Math.pow(x,b.length-1-i);
		}
		System.out.println("eq: "+eq);
	}
	
	//#4 Calcular zeros
	public static void zeros(double b[]){
		//Scanner 
		Scanner sc = new Scanner(System.in);
		System.out.println("NPontos+ Intervalo");
		int NP = sc.nextInt();
		double xi = sc.nextDouble();
		double xf = sc.nextDouble();
		
		double inc = (xf-xi)/(NP-1);
		double poli1=0;
		double poli2=0;
		
		System.out.print("Raizes: ");
		for (double i = xi; i <= xf; i+=inc){
			for (int j = 0; j < b.length; j++){
				poli1+=b[j]*Math.pow(i,b.length-1-j);
				poli2+=b[j]*Math.pow((i+inc),b.length-1-j);
				if(poli1*poli2<=0){
					System.out.print((i+inc)+ " ");
				}
			}
		}
		
	}	
	
	
	
	public static void formar_Dev(double b[]){
		String s="";
		for(int i =0; i<b.length;i++){
			s+=b[i]+"x^("+(b.length-1-i)+")+";
		}
		System.out.println("Equacao: "+s);
	}
	
}

