import java.util.Scanner;

public class Intervalo_Impares {
	
	public static void main (String[] args) {
		//Scanner
		Scanner sc= new Scanner(System.in);
		
		//variables
		int i,f;
		
		//inputs
		System.out.println("Introduza os valores positivos do Intervalo");
		i=sc.nextInt();
		f=sc.nextInt();
		while(i<0 || f<0){
			System.out.println("POSITIVOS!! Outra vez");
			i=sc.nextInt();
			f=sc.nextInt();
			
		}
		
		//condicao
		System.out.print("Numeros impares no intervalo: ");
		for(int j=i;j<=f;j++){
			if((j%2)!=0){
				System.out.print("R:"+j+"  ");
			}
		}
	}
}

