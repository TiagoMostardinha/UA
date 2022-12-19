package aula05.ex2;
import java.util.Scanner;

public class testCalendar {
    private static Scanner sc = new Scanner(System.in);
    public static Calendar cal;
    public static void main(String[] args) {
        do{
            System.out.printf("\nCalendar operations:\n1 - create new calendar\n2 - print calendar month\n3 - print calendar\n0 – exit\n");
            int c = sc.nextInt();
            switch (c){
                case 1:
                    System.out.print("weekday :");
                    int w = sc.nextInt();
                    System.out.print("year: ");
                    int y = sc.nextInt();
                    cal = new Calendar(w, y);
                    break;
                    
                case 2:
                    System.out.print("month :");
                    int m = sc.nextInt();
                    System.out.println(cal.printMonth(m));
                    break;
                case 3:
                    System.out.println(cal.toString());
            }
            if(c == 0) break;

        }while(true);
    }
}
