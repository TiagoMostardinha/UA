package aula03.ex36;
import java.util.*;

public class data {
    private static Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
        int[] data = {31,0,31,30,31,30,31,31,30,31,30,31};
        System.out.print("Ano: ");
        int ano = sc.nextInt();
        System.out.print("Mes:");
        int mes = sc.nextInt();
        
        if(mes != 2) System.out.printf("O mes tem %d dias",data[mes]);
        else{
            int b = ((ano % 4) == 0 || (ano % 400) == 0) ? 29 : 28;
            System.out.printf("O mes tem %d dias",b);
        }
    }
    
}
