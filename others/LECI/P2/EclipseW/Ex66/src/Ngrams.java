import static java.lang.System.*;
import java.util.Arrays;

public class Ngrams {

  public static void main(String[] args) {
    int N = 3;
    switch (args.length) {
    case 1:
      break;
    case 2:
      try {
        N = Integer.parseInt(args[1]);
      }
      catch (NumberFormatException e) {
        err.printf("Second argument must be a number.\n");
        exit(1);
      }
      break;
    default:
      out.println("USO: java -ea Ngrams ABC [N]");
      exit(1);
    }
    String[] a;
    String[] b;
    // Crie a função allNgrams e altere a invocação abaixo...
    a = all3grams(args[0]);
    out.println(Arrays.toString(a));
    
    b = allNgrams(args[0],N);
    out.println(Arrays.toString(b));
  }

  // Gera todos os arranjos de 3 símbolos escolhidos do alfabeto alpha.
  public static String[] all3grams(String alpha) {
    int l = alpha.length();
    String[] arr = new String[l*l*l];
    int n = 0;
    for (int i = 0; i < l; i++) {
      for (int j = 0; j < l; j++) {
        for (int k = 0; k < l; k++) {
          arr[n] = "" +  alpha.charAt(i) + alpha.charAt(j) + alpha.charAt(k);
          n++;
        }
      }
    }
    assert n == arr.length;
    return arr;
  }

  // Gera todos os N-gramas de símbolos escolhidos do alfabeto alpha.
  public static String[] allNgrams(String alpha, int n) {
    assert n >= 0;
    if(n == 0) {
    	String[] empty = {""};
    	return empty;
    }
    
    String[] grams = new String[(int)Math.pow(alpha.length(),n)];
    String[] nextGram = allNgrams(alpha, n-1);
    for(int i = 0; i < alpha.length();i++) {
    	for(int j = 0; i < alpha.length();j++) {
    		grams[i*nextGram.length+j] = "" + alpha.charAt(i) + nextGram[j]; 
    	}
    }
    
    return grams;
  }
}

