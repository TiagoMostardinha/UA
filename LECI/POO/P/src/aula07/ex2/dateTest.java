package aula07.ex2;
import java.util.Scanner;

public class dateTest {
    private static Scanner sc = new Scanner(System.in);
    private static DateYMD data = new DateYMD(1,1,0);
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
                        if(DateYMD.valid(d1, m1, y1)) break;
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
                    ((DateYMD) data).increment(sc.nextInt());
                    break;
                //decrement
                case 4:
                    ((DateYMD) data).decrement(sc.nextInt());
                    break;
                //differnce in days since 
        
                default:
                    break;
            }
            //break
            if(c == 0) break;
        }while(true);
        
        sc.close();
    }
}
