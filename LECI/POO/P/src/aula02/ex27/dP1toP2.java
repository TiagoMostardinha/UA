package aula02.ex27;
import java.util.*;

public class dP1toP2 {
    private static Scanner sc = new Scanner(System.in);
    public static void main(String[] args) throws Exception {
        System.out.println("p1: ");
        coordinates p1 = new coordinates();
        p1 = fillcod(p1);
        
        System.out.println("p2: ");
        coordinates p2 = new coordinates();
        p2 = fillcod(p2);

        System.out.printf("Distance P1 to P2 is : %.2f",distanceP2P(p1, p2));
    }

    public static coordinates fillcod(coordinates temp){
        System.out.print("x : ");
        temp.x = sc.nextInt();
        System.out.print("y : ");
        temp.y = sc.nextInt();
        return temp;
    }

    public static double distanceP2P(coordinates a,coordinates b){
        return Math.sqrt(Math.pow((a.x-b.x),2)+Math.pow((a.y-b.y),2));
    }
}

class coordinates{
    int x;
    int y;
}
