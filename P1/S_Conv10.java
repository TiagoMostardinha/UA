import java.util.Scanner;

public class S_Conv10 {
	public static final Scanner sc = new Scanner(System.in);
	
	public static void main (String[] args) {
		System.out.print("n: ");
		int n = sc.nextInt();
		System.out.print("b: ");
		int b = sc.nextInt();
		con(n,b);
	}
	
	public static void con(int num, int base){
		String a = "";
		int x=num;
		
		//while((int)num/base != 0){
		while(true){
			a+= num%base;
			num = (int)num/base;
			
			if(num/base <1){
				a = num + reverseS(a);
				break;
			}
		}
		System.out.printf("numToBase(%d, %d) = %s",x,base,a);
	}
	
	public static String reverseS(String in){
		char[] a = in.toCharArray();
		String out = "";
		
        for (int i = a.length - 1; i >= 0; i--){
            out += a[i];
		}
		return out;
	}
}

