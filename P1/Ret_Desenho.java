import java.util.Scanner;

public class Ret_Desenho {
	
	public static void main (String[] args) {
		//Scanner
		Scanner sc = new Scanner(System.in);
		
		//variables
		int h,l;
		String linha="";
		
		//input
		System.out.print("Altura e largura: ");
		h=sc.nextInt();
		l=sc.nextInt();
		
		for(int i =1;i<=h;i++){
			for(int j=1;j<=l;j++){
				linha=linha+"*";
				
			}
			System.out.println(linha);
			linha="";
		}
	}
}

