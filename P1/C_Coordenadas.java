import java.util.*;

public class C_Coordenadas {
	
	static final Scanner sc = new Scanner(System.in);

	
	public static void main (String[] args) {
		Ponto2D p1,p2;
		p1 = new Ponto2D();
		p2 = new Ponto2D();
		
		//variables
		double sum;
		
		while (p1.x != 0 && p2.y != 0){
			
			
		}
	}
	
	public static Ponto2D read(char a){
		System.out.println("Introuza um ponto");
		System.out.println("Coordenada do "+a+":");
		int r = sc.nextInt();
		return r;
	}
}

class Ponto2D{
	int x,y;
	
}

