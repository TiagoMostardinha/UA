import java.util.Scanner;

public class Nome_Completo {
	
	public static void main (String[] args) 
	{
		//Scanner
		Scanner sc=new Scanner(System.in);
		
		//variables
		String nome1,nome2,nome;
		char L1,L2;
		boolean TF1,TF2;
		int len;
		
		//Ler inputs
		System.out.println("Nome Proprio");
		nome1=sc.nextLine();
		System.out.println("Apelido");
		nome2=sc.nextLine();
		
		//1st Char
		L1=nome1.charAt(0);
		L2=nome2.charAt(0);
		
		//Condicao
		TF1=Character.isUpperCase(L1);
		TF2=Character.isLowerCase(L2);
		
		if (TF1==false || TF2==false)
		{
			L1=Character.toUpperCase(L1);
			L2=Character.toUpperCase(L2);
			nome1=nome1.substring(0,1).toUpperCase()+nome1.substring(1);
			nome2=nome2.substring(0,1).toUpperCase()+nome2.substring(1);
		}
		
		if (TF1==true && TF2==true)
		{
			TF1=true;
		}
		
		nome=nome1+nome2;
		
		len=nome.length();
		
		System.out.print(nome1+" "+nome2+", "+L1+L2+", "+len+", "+TF1);
			 
		
		
	}
}

