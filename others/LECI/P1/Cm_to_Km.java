import java.util.Scanner;

public class Cm_to_Km {
	
	public static void main (String[] args) 
	{
		//Scanner
		Scanner sc =new Scanner(System.in);
		
		//variaveis
		double x1,x2,y1,y2,distanciax,distanciay,distancia,escala;
		
		//ler inputs
		System.out.print("Escala 1:x (cm,km):");
		escala=sc.nextDouble();
				
		System.out.println("Coordenadas A");
		System.out.print("x:");
		x1=sc.nextDouble();
		System.out.print("y:");
		y1=sc.nextDouble();
		
		System.out.println("Coordenadas B");
		System.out.print("x:");
		x2=sc.nextDouble();
		System.out.print("y:");
		y2=sc.nextDouble();
		
		System.out.printf("A(%4.2f,%4.2f),B(%4.2f,%4.2f)",x1,y1,x2,y2);
		System.out.println();
		
		//Distancia
		distanciax=Math.pow(x1-x2,2);
		distanciay=Math.pow(y1-y2,2);
		
		distancia=Math.sqrt(distanciax+distanciay);
		
		System.out.printf("distancia em %4.2f cm",distancia);
		System.out.println();
		distancia=distancia*escala;
		System.out.printf("distancia em %4.2f km",distancia);
		
	}
}

