import java.util.Scanner;

public class C_TAS {
	public static final Scanner sc = new Scanner(System.in);
	
	public static void main (String[] args) {
		person sus = new person();
		
		System.out.print("Nome: ");
		sus.nome = sc.nextLine();
		System.out.print("Sexo(h/m): ");
		sus.sexo = sc.nextLine().charAt(0);
		System.out.print("Jejum(true/false): ");
		sus.jejum = sc.nextBoolean();
		System.out.print("Peso: ");
		sus.peso = sc.nextDouble();
		System.out.print("Quantidade de bebida(ml): ");
		sus.vol = sc.nextDouble();
		System.out.print("teor alcoolico(%): ");
		sus.tbd = sc.nextDouble();
		
		printClass(sus);
	}
	
	public static void printClass(person dude){
		System.out.println("Nome: "+dude.nome);
		System.out.printf("TAS: %4.2f ",dude.calculateTas());
	}
}

class person{
	String nome;
	char sexo;
	boolean jejum;
	double peso;
	double vol;
	double tbd;
	
	double calculateTas(){
		double c=0;
		
		if (jejum == false){
			c=1.1;
		}
		else{
			if(sexo=='h'){
				c=0.7;
			}
			if(sexo=='m'){
				c=0.6;
			}
		}	
		System.out.println("c: "+c);
		return (0.8*vol*tbd/100)/(peso*c);
	}
}

