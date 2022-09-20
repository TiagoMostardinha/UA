import java.util.Scanner;

public class S_wordCounter {
	public static final Scanner sc = new Scanner(System.in);
	
	public static void main (String[] args) {
		System.out.println("Introduza uma frase");
		String s = sc.nextLine();
		System.out.printf("countWords('%s') = %d",s,countWords(s));
	}
	public static int countWords(String a){
		String[] a_s = a.split("[ \n\t]+");
		return a_s.length;
	}
}

