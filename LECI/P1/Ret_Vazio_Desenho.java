import java.util.Scanner;

public class Ret_Vazio_Desenho {
	
	public static void main (String[] args) {
		//Scanner
		Scanner sc = new Scanner(System.in);
		
		//variables
		int h,l,hi,hf,pen,seg=1;
		String linha="";
		
		//input
		System.out.print("Altura e largura: ");
		h=sc.nextInt();
		l=sc.nextInt();
		
		//condicao
		hi=h-(h-1);
		hf=h-1;
		pen=l-1;
		
		//altura
		for(int i =1;i<=h;i++){
			//largura + tipo de linhas
				for(int j=1;j<=l;j++){
					if(i==1 || i==h){	
						linha=linha+"*";
					}
					else{
						if(seg==1 || seg==l){
							linha=linha+"*";
						}
						else{
							linha=linha+"x";
						}
						seg=seg+1;
					}
				}
				seg=1;
			System.out.println(linha);
			linha="";
		}
	}
}
