package Meth;
import java.util.*;

public class Fraction {
	public static final Scanner sc = new Scanner(System.in);
	
	public int num = 0;
	public int dem = 1;
	
	public static void doMul(Fraction x,Fraction y) {
		Fraction r = new Fraction();
		r.num = x.num * y.num;
		r.num = x.dem * y.dem;
		System.out.printf("%d / %d",r.num,r.dem);
	}
	
	public static void doSum(Fraction x,Fraction y) {
		Fraction r = new Fraction();
		if(x.dem == y.dem) {
			r.dem = x.dem;
			r.num = x.num + y.num;
		}
		else {
			r.dem = x.dem * y.dem;
			r.num = (x.num * y.dem) + (y.num * x.dem);
		}
		
		System.out.printf("%d / %d",r.num,r.dem);
	}
	public static int[] fracLine() {
		String f = sc.nextLine();
		String n[] = f.split(" ");
		int n_[] = new int[4];
		
		for(int i = 0; i < 4;i++) {
			n_[i] = Integer.parseInt(n[i]);
		}
		return n_;
	}
}
