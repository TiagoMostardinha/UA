import java.util.Scanner;

public class F_Print {
	
	public static void main (String[] args) {
		//Scanner msg
		Scanner sc=new Scanner(System.in);
		
		//variable + input
		System.out.println("Mensagem pretendida a repetir");
		String msg=sc.nextLine();
		PrintNtimes(msg,Positivo());
		
		
	}
	public static int Positivo(){
		//Scanner n
		Scanner sc=new Scanner(System.in);
		
		//variable + input
		int n;
		
		do{
			System.out.println("Quantas vezes a ser repetida");
			n=sc.nextInt();
		}while(n<0);
		return n;	
	}
	
	
	public static void PrintNtimes(String msg,int n){
		
		for(int i=0; i<n;i++){
			System.out.print(msg);
		}
		
	}
}
