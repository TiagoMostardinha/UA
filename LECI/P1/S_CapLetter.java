import java.util.*;

public class S_CapLetter {
	public static final Scanner sc = new Scanner(System.in);
	
	public static void main (String[] args) {
		System.out.println("Introduza a frase");
		String s = sc.nextLine();
		capLetter(s);
	}
	public static void capLetter(String in){
		//in = in.toLowerCase();
		String[] set = in.split(" ");

		for (int i = 0; i < set.length; i++){
			char c = set[i].charAt(0);
			set[i] = set[i].replace(c,Character.toUpperCase(c));
		}
		String out = Arrays.toString(set);
		out = out.replaceAll("\\[|\\]|", "");
		out = out.replace(",", "");
		
		System.out.println(out);
	}
}

