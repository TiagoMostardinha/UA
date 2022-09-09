import java.util.*;

public class mainClass {
	public static final Scanner sc = new Scanner(System.in);
	
	public static void main(String[] args) {
		System.out.printf("a,b: %d %d %n",Class1.a,Class1.b);
		System.out.print("n1 e n2: ");
		
		lineRead();
		
		System.out.printf("sum: %d",Class1.call());
	}
	
	public static void lineRead() {
		String[] s = sc.nextLine().split(" ");
		Class1.a = Integer.parseInt(s[0]);
		Class1.b = Integer.parseInt(s[1]);
	}

}
