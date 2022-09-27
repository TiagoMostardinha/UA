package mypack;
import java.util.*;

public class MyAdder {
	public static final Scanner sc = new Scanner(System.in);
	
	public static void main(String[] args) {
		int a = sc.nextInt();
		int b = sc.nextInt();
		
		adder(a,b);
	}
	public static void adder(int a,int b) {
		System.out.println(a+b);
	}

}
