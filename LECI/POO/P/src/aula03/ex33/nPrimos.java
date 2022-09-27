package aula03.ex33;
import java.util.Scanner;

public class nPrimos {
    private static Scanner sc = new Scanner(System.in);
    public static void main(String[] args) throws Exception {
        System.out.print("N: ");
        int num = conf();

        System.out.printf("isPrime? %b",isPrime(num));
    }
;
    public static int conf(){
        int t = -1;
        do{
            t = sc.nextInt();
            if(t > 0) break;
            System.out.print(">0");
        }while(true);
        return t;
    }

    public static boolean isPrime(int N){
        int count = 0;
        for (int i = 1; i <= N; i++) {
            if((N % i) == 0) count++;
        }
        return (count == 2) ? true : false;
    }
}
