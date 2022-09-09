package aula02.ex25;
import java.util.*;

public class vAtoB {
    private static Scanner sc = new Scanner(System.in);
    public static void main(String[] args) throws Exception {
        System.out.print("Distancia a : ");
        double da = sc.nextDouble();
        System.out.print("Velocidade a : ");
        double va = sc.nextDouble();

        System.out.print("Distancia b : ");
        double db = sc.nextDouble();
        System.out.print("Velocidade v : ");
        double vb = sc.nextDouble();

        double ta = da / va;
        double tb = db / vb;


        double vm = (da+db)/(ta+tb);

        System.out.printf("Vm nos %.2f m: %.2f",(da+db),vm);
    }
}
