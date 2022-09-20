import java.util.Scanner;

public class S_Matricula {
	public static final Scanner sc = new Scanner(System.in);
	
	public static void main (String[] args) {
		String s;
		
		System.out.printf("Patterns:%n1: AA-00-00%n2: 00-AA-00%n3: 00-00-AA%n");
		int m = sc.nextInt();
		System.out.println("Introduza a matricula:");
		do{
			s = sc.nextLine();
		}while(s.length() != 8);
		
		boolean mem = matchPattern(s,m);
		
		if(mem == true){
			System.out.println("Matricula portuguesa");
		}
		else{
			System.out.println("Nao e uma matricula portuguesa");
		}
		
	}
	
	public static boolean matchPattern(String a,int p){
		String c = "";
		boolean id = true;
		
		switch (p){
			case 1:
			c = "AA-00-00";
			break;
			case 2:
			c = "00-AA-00";
			break;
			case 3:
			c = "00-00-AA";
			break;
		}
		
		int countD = 0;
		int countL = 0;
		for (int i = 0; i < a.length(); i++){
			a.toUpperCase();
			
			if(Character.isDigit(c.charAt(i)) == true){
				id = true;
			}
			if(Character.isLetter(c.charAt(i)) == true){
				id = false;
			}
			
			if(Character.isDigit(a.charAt(i)) && id == true){
				countD++;
			}
			if(Character.isLetter(a.charAt(i)) && id == false){
				countL++;
			}
		}
		
		if(countD == 4 && countL ==2){
			return true;
		}
		else{
			return false;
		}
		
	}
}


