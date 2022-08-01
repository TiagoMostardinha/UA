package aula03.ex32;
import java.util.Scanner;

public class contD {
    private static Scanner sc = new Scanner(System.in);

    public static void main(String[] args) throws Exception {
        System.out.print("N: ");
        int N = sc.nextInt();

        for (int i = N; i > 0; i--) {
            System.out.printf("%d ",i);
        }
    }
}
