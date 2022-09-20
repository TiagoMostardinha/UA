import java.util.Scanner;

public class F_Mdc {
	
	public static void main (String[] args) {
		//Scanner
		Scanner sc =new Scanner(System.in);
		
		//variables + input
		int a=sc.nextInt();
		int b=sc.nextInt();
		
		System.out.println(Mdc(a,b));
		
		
	}
	
	public static char Mdc(int a,int b){
		String s1="";
		String s2="";
		char Out='0';
		String k,l;
		
		for(int i=1;i<=a;i++){
			if(a%i==0){
				s1 =s1+i;
			}
		}
		for(int i=1;i<=b;i++){
			if(b%i==0){
				s2 =s2+i;
			}
		}
		
		char MDC1='a',MDC2='a';
		
		if ((s1.length())<=(s2.length())){
			k=s2;
			l=s1;
		}
		else{
			k=s1;
			l=s2;
		}
		for (int x=(k.length());x>=0;x--){
			MDC1 = k.charAt(x);
			for(int y=(l.length());y>=0;y--){
				MDC2=l.charAt(y);
				if (MDC1==MDC2){
					return MDC2;
				}	
			}
		}
		System.out.println(MDC2);
		return Out;
	}
}

