import java.util.Scanner;

public class F_Fact {
	
	public static void main (String[] args) {
		//Scanner
		Scanner sc = new Scanner(System.in);
		
		System.out.println("N oara fatorizar"); 
		int in = sc.nextInt();
		
		System.out.printf("%nFatorial de %d e: %d",in,fact(in));
		
	}
	public static int fact(int in){
		int out=1;
		for(int i=in;i>=1;i--){
			out=out*i;
		}
		return out;
	
	}
}

