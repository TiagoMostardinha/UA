package aula02.ex28;
import java.util.*;

// O c1 é o lado A

public class HipAB {
    private static Scanner sc = new Scanner(System.in);
    public static void main(String[] args) throws Exception {
        System.out.println("t1: ");
        triangle t1 = new triangle();
        t1 = triangle_lados(t1);
        t1.hip = hipFunct(t1);

        System.out.printf("Lados :\nc1: %.2f, c2: %.2f, hip: %.2f\nang <c1 w hip>: %.2f Degrees",t1.c1,t1.c2,t1.hip,angFunct(t1));
    }

    public static triangle triangle_lados(triangle temp){
        System.out.print("c1 : ");
        temp.c1 = sc.nextDouble();
        System.out.print("c2 : ");
        temp.c2 = sc.nextDouble();
        return temp;
    }

    public static double hipFunct(triangle a){
        return Math.sqrt(Math.pow(a.c1, 2)+Math.pow(a.c2, 2));
    }
    public static double angFunct(triangle a){
        return Math.acos(a.c1/a.hip) * 57.2958;
    }

}

class triangle{
    double c1;
    double c2;
    double hip;
}
