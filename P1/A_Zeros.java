import java.util.*;
import java.io.*;

public class A_Zeros {
	
	static double ls[] = {1,0,-1,0};
	
	public static void main (String[] args) {
		int NPontos = 10000;
		int x1=-10;
		int x2 = 10;
		
		System.out.print(Arrays.toString(ls));
		zeros(ls,x1,x2,NPontos);
	}
	public static void zeros(double a[],int xi,int xf,int NP){
		double inc = ((double)(xf-xi)/(NP-1));
		int raiz=0;
		System.out.println("inc:" +inc);
		for(double i = xi; i<=xf;i+=inc){
			double poli1=equacao(ls,i);
			double poli2=equacao(ls,(i+inc));
			if(poli1*poli2<=0){
				raiz++;
				System.out.printf("Raiz %d: %f%n",raiz,(i+inc));
			}
		}
		System.out.println("raiz: "+raiz);
		
	}
	public static double equacao(double b[], double x){
		double out=0;
		for (int i = 0; i < ls.length; i++){
			out+=ls[i]*Math.pow(x,(ls.length-i-1));
		}
		return out;
	}
}

