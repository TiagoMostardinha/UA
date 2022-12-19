import java.util.Scanner;

public class S_Alberto {
	public static final Scanner sc = new Scanner(System.in);
	
	public static void main (String[] args) {
		System.out.println("Introduza a frase");
		String s = sc.nextLine();
		System.out.println("Alb. trad: "+tradutor(s));
	}
	public static String tradutor(String in){
		in = in.replace("R","");
		in = in.replace("r","");
		in = in.replace('L','U');
		in = in.replace('l','u');
		
		return in;
	}
}

