import java.util.Scanner;

public class TestaHora {
  static final Scanner sc = new Scanner(System.in);
  
  public static void main(String[] args) {
    Hora inicio;  // tem de definir o novo tipo Hora!
    Hora fim;
    
    inicio = new Hora();
    inicio.h = 9;
    inicio.m = 23;
    inicio.s = 5;
    
    System.out.print("Comecou as ");
    printHora(inicio);  // crie esta função!
    System.out.println(".");
    System.out.println("Quando termina?");
    fim = lerHora();  // crie esta função!
    System.out.print("Inicio: ");
    printHora(inicio);
    System.out.print(" Fim: ");
    printHora(fim);
  }
  
  public static void printHora(Hora tempo){
	  System.out.printf("%02d:%02d:%02d",tempo.h,tempo.m,tempo.s);
  }
  
  public static Hora lerHora(){
	  Hora tempo = new Hora();
	  do{
		  System.out.print("Horas? ");
		  tempo.h = sc.nextInt();
	  }while(tempo.h>24 || tempo.h<0);
	  
	  	  do{
		  System.out.print("Minutos? ");
		  tempo.m = sc.nextInt();
	  }while(tempo.m>60 || tempo.m<0);
	  
	  	  do{
		  System.out.print("Segundos? ");
		  tempo.h = sc.nextInt();
	  }while(tempo.s>60 || tempo.s<0);
	  
	  return tempo;
  }
  
}
class Hora{
	int h;
	int m;
	int s;
}

/**
EXEMPLO do pretendido:
$ java TestaHora
Começou às 09:23:05.
Quando termina?
horas? 11
minutos? 72
minutos? 7
segundos? 2
Início: 09:23:05 Fim: 11:07:02.
**/
