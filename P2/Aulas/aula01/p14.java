import java.util.*;

public class p14 {
	public static final Scanner sc = new Scanner(System.in);
	
	public static void main (String[] args) {
		System.out.println("Escreve a fase para ser traduzida: ");
		String s = sc.nextLine();
		tradutor(s);
	}
	
	public static void tradutor(String s){
		s = s.replace('l','u');
		s = s.replace("r","");
		System.out.println(s);
	}
}

