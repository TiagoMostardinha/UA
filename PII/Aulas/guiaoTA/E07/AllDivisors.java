import static java.lang.System.*;

public class AllDivisors
{
	public static void main(String[] args) {
		int n = 12;
		//System.out.println(div(n,n-1,""));~
		printdiv(div(n,n-1,""),div(n,n-1,"").length());
	}
	
	public static String div(int n,int i,String s) {
		if(i>1) {
			if(n % i == 0) s += i;
			return div(n,i-1,s);
		}
		return s;
	}
	
	public static void printdiv(String s,int i) {
		if(i>0) {
			System.out.println(s.charAt(i-1));
			printdiv(s,i-1);
		}
	}
}

