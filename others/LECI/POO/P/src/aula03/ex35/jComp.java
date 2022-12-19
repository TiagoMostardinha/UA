package aula03.ex35;
import java.util.*;

public class jComp {
    private static Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
        
        System.out.print("Montante: ");
        int m = mont();
        System.out.print("juro mensal");
        double j = ju();
        calcJu(m, j);

    }
    public static int mont(){
        do{
            int a = sc.nextInt();
            if(a > 0 && (a % 1000) == 0) return a;
        }while (true);
    }

    public static double ju(){
        do{
            double a = sc.nextDouble();
            if(a > 0 && a < 5) return a;
        }while (true);
    }

    public static void calcJu(int m,double j){
        double ant = m;

        for (int i = 1; i <= 12; i++) {
            double ma = ant * (1 + (j / 100));
            System.out.printf("[%d]: %.2f ",i,ma);
            ant = ma;
        }
    }

}
