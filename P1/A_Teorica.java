import java.util.Scanner;

public class A_Teorica {
	
	public static void main (String[] args) {
		Scanner sc =new Scanner(System.in);
		
		int k=-1;
		int[] notas={11,5,12,5,5,13};
		int[] copia;
		copia=notas;
		notas[0]=99;
		
		printArray(copia);
		
		System.out.println(k);
		printArray(copia);
		System.out.println(maximo
	}
	
	public static int[] gerarNotas(int num){
		int[] lista = new int[num];
		for (int i=0; i <lista.length;i++)lista[i]=(int)(Math.random()*21);
		return lista;
	}
	
	public static void ptintArray(int[] i){
		
	}
	
	public static int maximmo(int[] a){
		int max=a[0];
		for (int i=1;i<a.length;i++){
			if(a[i] > max)max=a[i];
		}
		return max;
	}
	public static String extenso(int num){
		String[] s={"zero","um","dois","tres"};
		return s[num];
	}
	
}

