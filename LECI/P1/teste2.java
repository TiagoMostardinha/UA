import java.util.*;

public class teste2 {
	
	public static void main (String[] args) {
		Scanner sc = new Scanner(System.in);
		int ano = sc.nextInt();
		int mes = sc.nextInt();
		int dia = sc.nextInt();
		
		Data b = new Data(ano,mes,dia);
		
		System.out.println(b.d(),b.m(),b.a());
	}
}

class Data{
	private int d,m,a;
	
	public Data(int a,int m,int d){
		this.d = d;
		this.m = m;
		this.a = a;
	}
	
	public int d(){return d;}
	public int m(){return m;}
	public int a(){return a;}
	
}

