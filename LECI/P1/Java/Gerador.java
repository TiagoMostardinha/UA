import java.util.Scanner;

public class Gerador {
	
	public static void main (String[] args) 
	{
		//Scanner
		Scanner sc=new Scanner(System.in);
		
		//variables
		double G,R;
		int c=0;
		
		//Gerador
		G=Math.random();
		
		//Ler inputs
		System.out.print("Guess: ");
		R=sc.nextDouble();
		
		//condicoao
		if (G<=0.05){
			c=1;
		}
		if (G>0.05 && G<=0.10){
			c=2;
		}
		if (G>0.10 && G<=0.15){
			c=3;
		}
		if (G>0.15 && G<=0.20){
			c=4;
		}
		if (G>0.20 && G<=0.25){
			c=5;
		}
		if (G>0.25 && G<=0.30){
			c=6;
		}
		if (G>0.30 && G<=0.35){
			c=7;
		}
		if (G>0.35 && G<=0.40){
			c=8;
		}
		if (G>0.40 && G<=0.45){
			c=9;
		}
		if (G>0.45 && G<=0.50){
			c=10;
		}
		if (G>0.50 && G<=0.55){
			c=11;
		}
		if (G>0.55 && G<=0.60){
			c=12;
		}
		if (G>0.60 && G<=0.65){
			c=13;
		}
		if (G>0.65 && G<=0.70){
			c=14;
		}
		if (G>0.70 && G<=0.75){
			c=15;
		}
		if (G>0.75 && G<=0.80){
			c=16;
		}
		if (G>0.80 && G<=0.85){
			c=17;
		}
		if (G>0.85 && G<=0.90){
			c=18;
		}
		if (G>0.90 && G<=0.95){
			c=19;
		}
		if (G>0.95 && G<=1){
			c=20;
		}
		
		System.out.println("O numero gerado e "+c);
		
		if (c == R)
		{
			System.out.print("Acertou");
		}
		else
		{
			System.out.print("Falhou por "+Math.abs(c-R));
		}
	}
}

