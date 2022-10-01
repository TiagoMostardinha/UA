import static java.lang.System.*;

public class P2
{
  public static void main(String[] args)
  {
	  for(int i = 0; i < args.length; i++) {
		  System.out.println(countPairs(args[i],args[i].length(),0));
	  }
  }
  
  public static int countPairs(String s, int i,int n) {
	  if(i>1) {
		  if(s.charAt(i-1) == s.charAt(i-2)) n++;
		  return countPairs(s,i-1,n);
	  }
	  
	  return n;
  }

}

