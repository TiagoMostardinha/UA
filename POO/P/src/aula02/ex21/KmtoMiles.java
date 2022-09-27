package aula02.ex21;

import java.util.Scanner;

public class KmtoMiles {
    private static Scanner sc = new Scanner(System.in);
    public static void main(String[] args) throws Exception {
        System.out.print("Km : ");
        double km = sc.nextDouble();

        double miles = km / 1.609;
        System.out.printf("%.3f Km is Miles = %.3f",km,miles);
    }
}
