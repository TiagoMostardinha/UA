import java.util.Scanner;

public class F_Mdc_2 {
	
	static int a;
	static int b;
	
	public static void main (String[] args) {
		//Scanner
		Scanner sc=new Scanner(System.in);
		
		//variables +input
		a =sc.nextInt();
		b =sc.nextInt();
		
		//Condicao
		System.out.println(Mdc1(a,b));
		
		
	}
	//Mdc's a
	public static int Mdc1(int a,int b){
		int out=0;
		for(int i=a;i>=1;i--){
			if (a%i==0 && b%i==0){
				return i;
			}
		}
		return out;
	}
}

