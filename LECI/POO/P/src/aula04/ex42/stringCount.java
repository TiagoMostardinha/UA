package aula04.ex42;
import java.util.*;

public class stringCount {
    private static Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
        System.out.print("String: ");
        String s1 = sc.nextLine();
        countDigits(s1);
        whiteS(s1);
        onlyLC(s1);
        stringWsAssert(s1);
        checkPalin(s1);

    }
    public static void countDigits(String s1) {
        int dc = 0;
        for (int i = 1; i <= s1.length(); i++) {
            dc += s1.substring(i-1,i).matches("\\d") ? 1 : 0;
        }
        System.out.printf("countDigits: %d\n",dc);
    }
    public static void whiteS(String s1) {
        int ws = 0;
        for (int i = 1; i <= s1.length(); i++) {
            ws += s1.substring(i-1,i).matches("\\s") ? 1 : 0;
        }
        System.out.printf("countWS: %d\n",ws);
    }
    public static void onlyLC(String s1) {
        char[] a = s1.toCharArray();
        boolean oLC;
        int i = 0;
        do{
            oLC = (Character.isLowerCase(a[i]) || a[i] == ' ' || Character.isDigit(a[i])) ? true : false;   
            i++;
        }while(oLC && i != a.length);
        System.out.printf("only Lowercase? %b\n",oLC);
    }
    public static void stringWsAssert(String s1) {
        char[] a = s1.toCharArray();
        String s2 = "";

        for (int i = 0; i < a.length; i++) {
            if(a[i] == ' ' && a[i-1] == ' '){

            }else{
                s2 += a[i];
            }
        }
        System.out.printf("string Asserted: %s\n",s2);
    }
    public static void checkPalin(String s1) {
        char[] a = s1.toCharArray();
        boolean cp = true;
        for (int i = 0; i < a.length/2; i++) {
            if(a[i] !=a[a.length-i-1]){
                cp = false;
                break;
            }
        }
        System.out.printf("check Palin: %b",cp);
    }
}
