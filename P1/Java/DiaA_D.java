import java.util.Scanner;

public class DiaA_D {
	
	public static void main (String[] args) 
	{
		//Scanner
		Scanner sc = new Scanner(System.in);
		
		//variables
		int d,m,a,da,dd,m_mem,a_mem;
		
		//inputs
		System.out.println("Dia:");
		d=sc.nextInt();
		System.out.println("Mes:");
		m=sc.nextInt();
		System.out.println("Ano:");
		a=sc.nextInt();
		
		//condicoes
		m_mem=m;
		a_mem=a;
		
		da=d-1;
		dd=d+1;
		
		if (d==28){
			if(m==2 &&(a%4==0 || a%400==0)){
				dd=29;
			}
			else
			{
				m=3;
				System.out.println("Dia Depois:"+dd+"/"+m+"/"+a);	
				dd=1;
				m=2;
				
			}
			
		}
		
		if (da<1){
			m=m-1;
			if (m<1){
				m=12;
				a=a-1;	
			}
			if (m==2){
				if (a%4==0 || a%400==0){
					da=29;
				}
				else{
					da=28;
				}
			}
			if (m==1 || m==3 || m==5 || m==7 || m==8 || m==10 || m==12)
			{
				da=31;
			}
			if (m==4 || m==6 || m==9 || m==11)
			{
				da=30;
			}
		}
		
		System.out.println("Dia Anterior:"+da+"/"+m+"/"+a);
		
		m=m_mem;
		a=a_mem;
		
		if (dd>31){
			m=m+1;
			dd=1;
			if (m>12){
				m=1;
				a=a+1;
			}	
			if (m==2 && dd>29){
				m=3;
			}	
		}	
		
		System.out.println("Dia Depois:"+dd+"/"+m+"/"+a);	
	}
	
}

