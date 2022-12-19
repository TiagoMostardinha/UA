import static java.lang.System.*;

public class reverseString {
    public static void main(String[] args) {
        for (int i = 0; i < args.length; i++) {
            System.out.printf("\"%s\" -> \"%s\"\n", args[i], reverse(args[i],args[i].length()));
        }
    }

    public static String reverse(String str, int n){
        if(n == 0) return "";
        //System.out.printf(" (%d, %c, %s) %n",n,str.charAt(n-1),str);
        return str.charAt(n-1) + reverse(str,n-1);
    }
}