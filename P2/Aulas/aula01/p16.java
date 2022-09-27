import java.util.*;

public class p16 {
	public static final Scanner sc = new Scanner(System.in);
	
	public static void main (String[] args) {
		System.out.println("Adivinhe o numero!");
		
		int num = (int)(Math.random()*(10+1));
		System.out.println(num);
		boolean b = true;
		
		do{
			System.out.print("Guess: ");
			int g = sc.nextInt();
			b = check(num,g);
		}while(b);
		System.out.println("Parabens! Adivinhou o numero");
	}
	
	public static boolean check(int n,int c){
		if(n>c){System.out.println("n e maior");}
		if(n<c){System.out.println("n e menor");}
		if(n==c){return false;}
		return true;
	}
}

