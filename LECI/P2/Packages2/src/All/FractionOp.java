package All;
import java.util.*;

import All.Meth2.Fraction;


public class FractionOp {
	
	public static final Scanner scanner = new Scanner(System.in);
	public static void main(String[] args) {
		Fraction a = new Fraction();
		Fraction b = new Fraction();
		
		System.out.println("2 Fracoes: a b c d");
		int n[] = Fraction.fracLine();
		
		a.num = n[0];
		a.dem = n[1];
		
		b.num = n[2];
		b.dem = n[3];
		
		//System.out.printf("%d %d %d %d",a.num, a.dem,b.num,b.dem);
		
		System.out.println("op: + (1) ; * (0)");
		int op = scanner.nextInt();
		
		
		if(op == 1) {
			Fraction.doSum(a,b);
		}
		if(op == 0) {
			Fraction.doMul(a,b);
		}
		else {System.exit(1);}
	}

}
