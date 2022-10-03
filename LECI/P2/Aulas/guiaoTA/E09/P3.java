import static java.lang.System.*;

import java.util.Arrays;

public class P3 {

  public static void main(String[] args) {
	  //System.out.println(args.length + Arrays.toString(args));
	  System.out.printf("%s e prefixo de %s --> %b",args[0],args[1],isPrefix(args[0],args[1],0));
  }
  
  public static boolean isPrefix(String s,String p, int i) {
	  if(p.length() > s.length() || s.length() == 0) return false;
	 
	  if(i < p.length()) {
		  System.out.printf("%c = %c%n",s.charAt(i), p.charAt(i));
		  if(s.charAt(i) == p.charAt(i))return isPrefix(s,p,i+1);
		  return false;
		  
	  }
	  return true;

  }


}

