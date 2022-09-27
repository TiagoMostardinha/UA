package aula02.ex24;
import java.util.*;

public class JurosC {
    private static Scanner sc = new Scanner(System.in);
    public static void main(String[] args) throws Exception {
        System.out.print("Investimento inicial : ");
        double C = sc.nextDouble();
        System.out.print("Taxa de juros % : ");
        double i = sc.nextDouble();
        System.out.print("Meses : ");
        int n = sc.nextInt();


        double M = C * Math.pow((1+(i/100)),n);
        System.out.printf("Montante passado %d : %.2f",n,M);
    }
}
