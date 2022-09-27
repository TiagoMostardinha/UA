package aula04.ex43;
import java.util.*;

public class acro {
    private static Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
         System.out.print("String: ");
         String s1 = sc.nextLine();
         acroFinder(s1);

    }
    public static void acroFinder(String s1) {
        String[] a = s1.split(" ");
        String s2 = "";

        for (int i = 0; i < a.length; i++) {
            if(a[i].length() >= 3) s2+=Character.toUpperCase(a[i].charAt(0));
        }
        System.out.printf("Acro: %s",s2);
    }
    
}
