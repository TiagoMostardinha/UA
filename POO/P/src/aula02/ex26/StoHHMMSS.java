package aula02.ex26;

import java.util.*;

public class StoHHMMSS {
    private static Scanner sc = new Scanner(System.in);
    public static void main(String[] args) throws Exception {
        System.out.print("Segundos : ");
        int s = sc.nextInt();

        int h = s / 3600;
        int hr = s % 3600;

        int m = hr / 60;
        int sf = hr % 60;

        System.out.printf("%2d:%2d:%2d",h,m,sf);

    }
}
