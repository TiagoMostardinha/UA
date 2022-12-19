import java.util.*;
import java.io.*;

public class GUI2 {
	
	public static void main (String[] args) {
		int CapacidadeMaxima=3;
		
		printArray(readArray(CapacidadeMaxima));
		
		int a=4;
		int b =2;
		int c =5;
		
		boolean TF1= true;
		boolean TF2=false;
		boolean TF3= true;
		System.out.println();
		System.out.println(soma(a,b,TF1));
		System.out.println(soma(b,c,TF2));
		System.out.println(soma(a,c,TF3));
		
	}
	public static int[] readArray(int CM){
		//Scanner 
		Scanner sc =new Scanner(System.in);
		
		int ls[]=new int[CM];
		for(int i=0; i<ls.length;i++){
			System.out.printf("ls[%d]:%n",i);
			ls[i]=sc.nextInt();
		}
		return ls;
	}
	
	public static void printArray(int lista[]){
		System.out.println(Arrays.toString(lista));
		for(int j=0;j<lista.length;j++){
			System.out.print(lista[j]+" ");
		}
	}
	
	public static int soma(int num1, int num2,boolean TF){
		if (TF==true){
			return num1+num2;}
		else{
			return 0;}
	}
}

