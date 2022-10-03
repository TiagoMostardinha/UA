package aula02.ex23;
import java.util.*;

public class QtoJ {
    private static Scanner sc = new Scanner(System.in);
    public static void main(String[] args) throws Exception {
        System.out.print("Massa de agua : ");
        double m = sc.nextDouble();
        System.out.print("Tf : ");
        int tf = sc.nextInt();
        System.out.print("Ti : ");
        int ti = sc.nextInt();

        double Q = m*(tf-ti)*4184;

        System.out.printf("Precisa de %.3f J para aquecer %d C",Q,(tf-ti));
    }
}
