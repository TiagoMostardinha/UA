import java.util.*;

public class IVA {
	public static final Scanner sc = new Scanner(System.in);
	
	public static void main (String[] args) {
		//inputs
		System.out.println("Introduza os valores");
		for (int i = 0; i < 3; i++){
			System.out.printf("Quantia %d:",i+1);
			double q = sc.nextDouble();
			System.out.printf("Escalao %d:",i+1);
			int e = sc.nextInt();
			
		//print
			System.out.printf("Quantia: %4.2f; IVA: %4.2f%n",q,IVA(q,e));
		}
		
		
	}
	public static double IVA(double quantia, int esc){
		double ivaf = 0;
		switch(esc){
			case 1:
			ivaf = quantia * 0.06;
			System.out.print("Taxa reduzida; ");
			break;
			case 2:
			ivaf = quantia * 0.13;
			System.out.print("Taxa intermedia; ");
			break;
			case 3:
			ivaf = quantia * 0.23;
			System.out.print("Taxa normal; ");
			break;
		}
		return ivaf;
	}
}

