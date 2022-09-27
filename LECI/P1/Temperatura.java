import java.util.Scanner;

public class Temperatura
{
  public static void main(String[] args)
  {
	  //Vai ler o q introduzir
	  Scanner Ler  = new Scanner(System.in);
	  
	  //Variaveis
	  double TempC,TempF;
	  
	  //Perguntar e Lê
	  System.out.print("C para F");
	  TempC = Ler.nextDouble();
	  
	  //Conversão
	  TempF=1.8*TempC+32;
	  
	  //Resultado
	  System.out.printf("%4.1f C Equivale a %4.1f\n F",TempC,TempF);
	}
}
	  
	  
