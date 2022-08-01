package aula05.ex1;
import java.util.Scanner;

public class dateTest {
    private static Scanner sc = new Scanner(System.in);
    private static Date data = new Date();
    public static void main(String[] args) {
        menu();
    }

    
    public static void menu(){
        do{
            System.out.printf("\nDate operations:\n1 - create new date\n2 - show current date\n3 - increment date\n4 - decrement date\n0 - exit\n");
            int c = sc.nextInt();
            switch (c) {
                //create new date
                case 1:
                    int d1,m1,y1;
                    do{
                        System.out.print("Day:");
                        d1 = sc.nextInt();
                        System.out.print("Month:");
                        m1 = sc.nextInt();
                        System.out.print("Year:");
                        y1 = sc.nextInt();
                        if(Date.valid(d1, m1, y1)) break;
                        System.out.println("Inválido");
                    }while(true);
                    data.set(d1,m1,y1);
                    break;
                //show date
                case 2:
                    System.out.print(data.toString());
                    break;
                //increment
                case 3:
                    data.increment();
                    break;
                //decrement
                case 4:
                    data.decrement();
                    break;
                
                default:
                    break;
            }
            //break
            if(c == 0) break;
        }while(true);
    }
}
