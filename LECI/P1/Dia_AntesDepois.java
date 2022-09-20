import java.util.Scanner;

public class Dia_AntesDepois {
	
	public static void main (String[] args) 
	{
		//Scanner
		Scanner sc=new Scanner(System.in);
		
		//variables
		int d,m,ano,Dia=0,DiaA=0,DiaD=0;
		boolean a=false,b=true;
		d=0;
		
		//input
		System.out.println("Mes e ano");
		m=sc.nextInt();
		ano=sc.nextInt();
		
		//condicao
		for (int i=1;i<3;i++){
			System.out.println(d);

			switch (m)
			{
				case 1:
				d=31;
				break;
				case 2:
				if (ano%4==0 || ano%400==0)
				{
					d=29;
				}
				else
				{
					d=28;
				}
				break;
				case 3:
				d=31;
				break;
				case 4:
				d=30;
				break;
				case 5:
				d=31;
				break;
				case 6:
				d=30;
				break;
				case 7:
				d=31;
				break;
				case 8:
				d=31;
				break;
				case 9:
				d=30;
				break;
				case 10:
				d=31;
				break;
				case 11:
				d=31;
				break;
				case 12:
				d=30;
				break;
			
			}
			
			/////
			System.out.println("d:"+d);
			////
		
			//input P2
			while (a==false){
				System.out.println("diga um dia de 1 a "+d);
				Dia=sc.nextInt();
				if (Dia<d){
					a=true;
				}
				else{
					System.out.println("Escolha outro dia");
				}
			}
			
			////
			System.out.println("d:"+d);
			////
			if (b==false){
				DiaA=Dia-1;
				DiaD=Dia+1;
				if (DiaA==0){
					m=m-1;
				}
				if(DiaD>d){
					m=m+1;
					if(m>12){	
						ano=ano+1;
						m=1;
						DiaD=1;
					}
				
				}
				b=true;
			}
		}
		
		////
		System.out.println("m:"+m);
		////
		
		
		
		if (m<1){
			ano=ano-1;
			m=12;
			DiaA=d;
		}
		if(m>12){	
			ano=ano+1;
			m=1;
			DiaD=1;
		}
		
		System.out.print("Dia Anterior:"+DiaA+"/"+m+"/"+ano);
		System.out.print("Dia Depois:"+DiaD+"/"+m+"/"+ano);
	}
}

