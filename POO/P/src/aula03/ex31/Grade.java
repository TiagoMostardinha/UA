package aula03.ex31;
import java.util.Scanner;

public class Grade {
    private static Scanner sc = new Scanner(System.in);
    public static void main(String[] args) throws Exception {
        Nota aluno = new Nota();

        // Atribuir notaT e notaP
        System.out.print("Nota Teórica: ");
        aluno.notaT = conf();
        System.out.print("Nota Prática: ");
        aluno.notaP = conf();

        // Aprovação e nota
        System.out.printf("|| Nota Final: %.1f ||",approvation(aluno));
    }

    public static int conf(){
        int n = -1;
        do{
            n = sc.nextInt();
            if(n > 0 && n < 20) break;
            System.out.println("Entre 0 e 20");
        }while(true);
        return n;
    } 

    public static double approvation(Nota temp){
        return (temp.notaT < 7 || temp.notaP < 7) ? 66 : (temp.notaT * 0.4 + temp.notaP * 0.6);
    }
}

class Nota{
    int notaT = 0;
    int notaP = 0;
}