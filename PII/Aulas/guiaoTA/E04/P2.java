import static java.lang.System.*;

public class P2
{
  public static void main(String[] args)
  {
	  String s = "ola o meu nome é tiago";
	  System.out.println(reverse(s,s.length()));
  }
  
  public static String reverse(String str, int n){
      if(n==0) return "";
      return str.charAt(n-1) + reverse(str,n-1);
  }

}

