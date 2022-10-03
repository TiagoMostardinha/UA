import java.util.*;

public class A_Strings {
	public static final Scanner sc = new Scanner(System.in);
	
	public static void main (String[] args) {
		String[] set = new String[10];
		set = readnResize(set);
		set = reverseArray(set);
		printArray(set);
		
	}
	
	public static String[] readnResize(String[] a){
		String s1 = "fim";
		int i = 0;
		
		//read
		for (i = 0; i < a.length; i++){
			System.out.printf("Frase %d: ",i+1);
			String in = sc.nextLine();
			
			if(s1.equals(in) == true){break;}
			
			a[i] = in;
		}
		//resize
		String[] clone = new String[i];
		System.arraycopy(a,0,clone,0,i);
		
		return clone;
	}
	
	public static String[] reverseArray(String[] o){
		String[] r = new String[o.length];
		for (int i = 0; i < o.length; i++){
			r[i] = reverseString(o[o.length-i-1]);
		}
		return r;
	}
	
	public static String reverseString(String s){
		char[] c = s.toCharArray();
		s = "";
		
		for (int i = c.length-1; i >=0; i--){
			s += c[i];
		}
		
		return s;
	}
	
	public static void printArray(String[] out){
		System.out.println("Resultado: ");
		for (int i = 0; i < out.length; i++){
			System.out.printf("%d: %s%n",i+1,out[i]);		
		}
		
	}
}

