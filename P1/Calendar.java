import java.util.Scanner;

public class Calendar {
	
	public static void main (String[] args) {
		//Scanner
		Scanner sc = new Scanner(System.in);
		
		//variable
		int dd,aa,mm;
		
		//dia base
		int db=1,mb=1,ab=4,WD,cont_d,cont_a,cont_b;
		
		//input
		System.out.println("Mes/Ano");
		mm=sc.nextInt();
		aa=sc.nextInt();
		
		//Condicao
		//n dias
		switch(mm){
			case 1,3,5,7,8,10,12:
			dd=31;
			break;
			case 2:
			if(aa%4==0 || aa%400==0){
				dd=29
			}
			else{
				dd=28;
			}
			break;
			case 4,6,9,11:
			dd=30;
			break;
		}
		
		//Weekday
		cont_a=Math.abs(a-ab);
		cont_b=Math.abs(a/4);
		if (a/4!=0 && a/400==0){
			cont_b=Math.abs(a/400)+cont_b;
		}
		cont_d=365*cont_a+(cont_b);
		cont_d=
		
		
		
			
	}
}

