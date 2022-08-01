import java.util.*;
import java.io.*;

public class RestaurantesMain {
	public static final Scanner lemacaco = new Scanner(System.in);
	
	public static void main(String[] args) throws IOException {
		String[] list = Reader();
		MiguelEficiente(list);

	}
	
	public static String[] Reader() throws IOException{
		String[] a = new String[100];
		int i = 0;
		File f = new File("restaurantes.txt");
		Scanner sc = new Scanner(f);
		while(sc.hasNextLine()) {
			a[i] = sc.nextLine();
			i++;
		}
		a[100-1] = String.valueOf(i);
		return a;
	}
	
	public static void MiguelEficiente(String[] a) {
		String decisoes = "";
		Random gerador = new Random();
		int size = Integer.parseInt(a[100-1]);
		String rest ="";
		do {
			rest = a[gerador.nextInt(size)];
			System.out.printf("%s? ",rest);
			decisoes = lemacaco.nextLine();
		}while(!decisoes.equals("y") && !(rest == null) && !(rest.charAt(0) == '-'));
		
		System.out.printf("%nO Miguel finalmente decidiu-se. O escolhido foi %s",rest);
	}

}
