import static java.lang.System.*;
import java.util.Scanner;

public class p13 {
  public static final Scanner in = new Scanner(System.in);

  public static void main(String[] args) {
    int n;
    while (true) {
      out.print("N? ");
      n = in.nextInt();
      if (n > 0) break;
      err.println("ERROR: invalid number!");
    }

    String verb = isPrime(n)? "is" : "is not";
    out.printf("Number %d %s prime\n", n, verb);
  }

  public static boolean isPrime(int n) {
    // Complete a função para verificar se n é primo...
    int j = 0;
    for (int i = 1; i <= n; i++){
		if(n%i==0){j++;}
	}
	
	if(j>2){return false;}
	return true;

  }
}
