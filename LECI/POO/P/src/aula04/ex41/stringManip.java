package aula04.ex41;
import java.util.*;

public class stringManip {
    private static Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
        System.out.print("String: ");
        String s1 = sc.nextLine();
        converToLC(s1);
        lastChar(s1);
        first3(s1);
        compareFL(s1);
        containsS2(s1);
        matchesNumb(s1);
    }
    public static void converToLC(String s1){
        System.out.println("LC: " + s1.toLowerCase());
    }
    public static void lastChar(String s1){
        System.out.printf("Last Char: %s\n",s1.substring(s1.length()-1));
    }
    public static void first3(String s1){
        System.out.printf("first 3 char: %s\n",s1.substring(0,3));
    }
    public static void compareFL(String s1){
        System.out.printf("F = L? %b\n",(s1.substring(0,1).compareTo(s1.substring(s1.length()-1))));
    }
    public static void containsS2(String s1){
        System.out.print("s2: ");
        String s2 = sc.nextLine();

        System.out.printf("s2? %b\n", s1.contains(s2));
    }
    public static void matchesNumb(String s1){
        System.out.printf("3 in a row N? %b\n",s1.matches("\\d{2,}")); // ????
    }
}
