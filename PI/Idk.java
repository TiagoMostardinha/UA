public class Idk {
 public static void main(String[] args)
  {

    double x, z;
    int y, q;

    x = 9;
    y = 2;
    z = x / y;
    q = (int)Math.pow(x, y); 
    y = (int)(y + 1.0);
    x = q + z;  

    System.out.printf("%5.2f\n", x);
    System.out.printf("%d\n", y);
    System.out.printf("%4.2f\n", z);
    System.out.printf("%d\n", q);
  } 
}
