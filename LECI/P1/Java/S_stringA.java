import java.util.Scanner;

public class S_stringA {
	public static final Scanner sc = new Scanner(System.in);
	
	public static void main (String[] args) {
		System.out.println("Introduza frase: ");
		String frase = sc.nextLine();
		
		analyze p = fill(frase);
		printClass(p);
		
	}
	
	
	public static analyze fill(String s){
		int a = 0;
		int b = 0;
		int c = 0;
		int d = 0;
		
		for (int i = 0; i < s.length(); i++){
			boolean a1 = Character.isLowerCase(s.charAt(i));
			boolean b1 = Character.isUpperCase(s.charAt(i));
			boolean c1 = Character.isDigit(s.charAt(i));
		
			if(a1 ==true){
				a++;
			}
			if(b1 ==true){
				b++;
			}
			if(c1 ==true){
				c++;
			}
			if(a1 == false && b1 == false && c1 == false){
				d++;
			}
		}
		
		analyze p = new analyze(a,b,c,d);
		return p;
	}
	
	public static void printClass(analyze cs){
		System.out.println("n Lower Case: "+cs.lc);
		System.out.println("n Upper Case: "+cs.uc);
		System.out.println("n Digit: "+cs.dig);
		System.out.println("n Unknown char: "+cs.unk);
	}
}

class analyze{
	int lc;
	int uc;
	int dig;
	int unk;
	
	analyze(int _lc,int _uc,int _dig,int _unk){
		lc = _lc;
		uc = _uc;
		dig = _dig;
		unk = _unk;
	}
}

