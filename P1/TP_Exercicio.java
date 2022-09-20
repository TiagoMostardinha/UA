import java.util.*;
import java.io.*;

public class TP_Exercicio {
	
	public static void main (String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int funcao[]={1,5,6,3,6,8,3,10};
		int sinal[]= new int[funcao.length];
		int max=funcao[0];
		
		for (int i = 0; i < funcao.length; i++){
			System.out.printf("Introduza os valores funcao[%d]",i);
			funcao[i]=sc.nextInt();
		}
		
		for (int j = 0; j < funcao.length; j++){
			if(funcao[j]>=max){
				max=funcao[j];
			}
		}
		System.out.println("MAX:"+max);
		
		//#1
		int subN_B[]=ArrayNB(funcao);
		System.out.println("[i+1]-[i]:"+Arrays.toString(subN_B));
		
		//#2(nº vezes q troca de + para -
		int P_N=F_Sinal(subN_B,sinal);
		System.out.print("+ para -:"+Arrays.toString(sinal));
		
	}
	
	//#1
	public static int[] ArrayNB(int funcao[]){
		int newArray[]= new int[funcao.length-1];
		for (int i = 0; i < funcao.length-1; i++){
			newArray[i]= funcao[i+1]-funcao[i];
		}
		return newArray;	
	}
	//#2
	public static int F_Sinal(int funcao[],int[] sinal){
		int n_max=0;
		for (int i = 0; i < funcao.length-1; i++){
			if(funcao[i+1]<0 && funcao[i]>0){
				n_max++;
				sinal[n_max]=(i+1);
			}
			
		}
		return n_max;
	}
}

