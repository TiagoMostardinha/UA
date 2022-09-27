package aula03.ex37;
import java.util.*;

public class abJogo {
    private static Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
        String s = "";
        do{
            game();
            System.out.println("Pretende continuar? Prima(S)im");
            s = sc.next();
        }while(s.equals("Sim") || s.equals("S"));
    }

    public static void game(){
        int number = (int)(Math.random()*100);
        do{
            System.out.print("Guess: ");
            int guess = sc.nextInt();
            if(guess > number) System.out.println("Para baixo");
            else if(guess < number) System.out.println("Para cima");
            else break;
        }while(true);

        System.out.println("Acertaste");
    }
}
