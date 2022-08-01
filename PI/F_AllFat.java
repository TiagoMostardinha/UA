import java.util.Scanner:

public class F_AllFat {
	
	public static void main (String[] args) {
		All_Fat(Intervalo());
		
		
	}
	public static int Intervalo(){
		//Scanner 
		Scanner sc=new Scanner(System.in);
		
		//variable + input
		do{
			System.out.println("Escreve um numero entre 1 e 10");
			int M = sc.nextInt();
		}while(M<10 && M>0);	
	}
	
	public static int All_Fat(int M){
		for (int i=1;i<=M;i++){
			
		} 
		
	}
	
}

