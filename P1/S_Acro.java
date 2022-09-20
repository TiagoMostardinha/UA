import java.util.Scanner;
import java.util.Arrays;

public class S_Acro {
	public static final Scanner sc = new Scanner(System.in);
	
	public static void main (String[] args) {
		acro[] mem = new acro[100];
		int i = 0;
		String s;
		
		//valores para sete no array de objetos
		System.out.println("Introduza String: ");
		while(sc.hasNextLine()){
			s = sc.nextLine();
			mem[i] = readClass(s);
			i++;
			System.out.println("Introduza String: ");
		}
		
		mem = resize(mem,i);
		
		//para cada i
		for (int k = 0; k < i; k++){
			findAcro(mem[k]);
		}
		

		
		printAClass(mem);
		
	}
	
	
	public static acro readClass(String l){
		acro a = new acro();
		a.sete = l;
		return a;
	}

	
	public static acro[] resize(acro[] ex,int x){
		acro[] newS = new acro[x];
		System.arraycopy(ex,0,newS,0,x);
		
		System.out.println("length: "+newS.length);
		System.out.println("ex[0]: "+ex[0].sete);
		
		return newS;
	}
	
	public static void findAcro(acro obj){
		String[] w = obj.sete.split(" ");
		for (int i = 0; i < w.length; i++){
			if(Character.isUpperCase(w[i].charAt(0)) == true){
				obj.ac += w[i].charAt(0);
			}
		}
	}
	
	public static void printAClass(acro[] pClass){
		for (int i = 0; i < pClass.length; i++){
			System.out.printf("acronimo{%s} de e %s.%n",pClass[i].sete,pClass[i].ac);
		}
		
	}
}

class acro{
	
	String sete = "";
	String ac = "";
}
