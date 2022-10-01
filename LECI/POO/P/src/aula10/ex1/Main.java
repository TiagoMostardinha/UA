package aula10.ex1;

//import java.util.Scanner;

public class Main {
    //private static Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
        //System.out.printf("Dicionario\n1 - add\n2 - change\n3 - remove \n4 - toString");

        Dictionary dictionario = new Dictionary();

        dictionario.add(new Word("banana","fruta amarela"));
        dictionario.add(new Word("carro","automovel"));
        dictionario.add(new Word("macieira","arvore de macas"));
        dictionario.add(new Word("agua","H2Cl"));
        dictionario.add(new Word("cadeira","mobilia"));

        dictionario.change(new Word("agua", "H2O"));

        dictionario.remove("banana");

        System.out.print(dictionario.toString());

        /*int option;

        while(true){
            System.out.print("\noption: ");
            option = sc.nextInt();
            sc.next();

            switch (option) {
                case 1:
                    dictionario.add(new Word(sc.next(),sc.nextLine()));
                break;
                case 2:
                    dictionario.change(new Word(sc.next(), sc.nextLine()));
                break;
                case 3:
                    dictionario.remove(sc.next());
                break;
                case 4:
                    System.out.print(dictionario.toString());
                break;

            }
            sc.next();
        }*/
    }
}
