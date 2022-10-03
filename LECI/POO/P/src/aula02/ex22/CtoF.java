package aula02.ex22;

import java.util.*;

public class CtoF {
    private static Scanner sc = new Scanner(System.in);
    public static void main(String[] args) throws Exception {
        System.out.print("Celsius : ");
        double C = sc.nextDouble();

        double F = 1.8 * C + 32;
        System.out.printf("%.3f C are F = %.3f",C,F);
    }
}
