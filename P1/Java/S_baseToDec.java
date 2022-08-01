import java.util.*;

public class S_baseToDec {
	public static final Scanner sc = new Scanner(System.in);
	
	public static void main (String[] args) {
		System.out.print("n base: ");
		String n = sc.nextLine();
		System.out.print("b: ");
		int b = sc.nextInt();
		baseToNum(n,b);
		
	}
	
	public static void baseToNum(String in, int base){
		int num = 0;
		char[] x = new char[in.length()];
		
		for (int j = 0; j < in.length(); j++){
			x[j] = in.charAt(j);
		}
		
		
		for (int i = 0; i < in.length(); i++){
			num += Integer.parseInt(String.valueOf(x[i]))*Math.pow(base,in.length()-i-1);
		}
		System.out.printf("baseToNum(%s, %d) = %d",in,base,num);
	} 
}

