import java.util.Scanner;

public class F_Retangulo {
	
	public static void main (String[] args) {
		//Scanner
		Scanner sc =new Scanner(System.in);
		
		//variables + inputs
		System.out.println("Largura e Altura");
		int l=sc.nextInt();
		int h=sc.nextInt();
		boolean D;
		
		for (int i =1; i<=h;i++){
			if(i==1 || i==h){
				D=true;
			}
			else{
				D=false;
			}
			System.out.println(Largura(l,D));
		}
		
	}
	
	public static String Largura(int l,boolean D){
		String s="";
		int i;
		if (D==true){
			for(i=1;i<=l;i++){
				s=s+"*";
			}
		}
		else{
			s=s+"*";
			for(i=2;i<=l-1;i++){
				s=s+" ";
			}
			s=s+"*";
		}
		return s;
		
	}
}

