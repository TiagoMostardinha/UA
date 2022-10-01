package aula05.ex5;
import java.io.IOException;
import java.util.Scanner;
import java.util.Vector;

public class testBiblo {
    private static Scanner sc = new Scanner(System.in);

    private static Vector<Livro> livros = new Vector<>(100);
    private static Vector<Utilizador> utilizadores = new Vector<>(100);

    public static void main(String[] args) throws IOException{
        while(true){
            
            System.out.print("Biblioteca:\n1 - inscrever utilizador\n2 - remover utilizador\n3 - imprimir lista de utilizadores\n4 - registar um novo livro\n5 - imprimir lista de livros\n6 - emprestar\n7 - devolver\n8 - sair\nOpcao:");
            int option = sc.nextInt();
            
            switch (option) {
                case 1:
                    addUtilizador();
                    break;

                case 2:
                    remUtilizador();
                    break;

                case 3:
                    printUtil();
                    break;
                case 4:
                    addLivro();
                    break;
                
                case 5:
                    printLiv();
                    break;
                
                case 6:
                    emprestar();
                    break;
                
                case 7:
                    devolver();
                    break;
            }
            if(option == 8) break;
            if(option < 1 && option > 1) System.out.print("Opcao Invalida");
        }
    }


    //Utilizador Functions
    private static void addUtilizador(){
        System.out.println("(inscrever utilizador)");
        int nMec;
        boolean mBool = false;

        do{
            System.out.print("nMec: ");
            nMec = sc.nextInt();

            for(Utilizador utilizador : utilizadores){
                if(utilizador.getnMec() == nMec){
                    System.out.print("nMec já introduzido!\n");
                    mBool = true;
                }
            }

        }while(mBool != false);

        System.out.print("Nome:");
        String nome = sc.next();
        System.out.print("Curso:");
        String curso = sc.next();

        utilizadores.add(new Utilizador(nome, nMec, curso));
    }

    private static void remUtilizador() {
        System.out.println("(remover utilizador)");
        boolean rb = false;

        System.out.print("nMec: ");
        int nMec = sc.nextInt();

        for (int i = 0; i < utilizadores.size(); i++) {
            if(utilizadores.get(i).getnMec() == nMec) {
                utilizadores.remove(i);
                rb = true;
            }
        }

        System.out.print(rb == true ? "Utilizador removido!\n" : "Utilizador não encontrado!\n");
    }

    private static void printUtil() {
        System.out.println("(imprimir lista de utilizadores)");
        for (int i = 0; i < utilizadores.size(); i++) {
            System.out.println(utilizadores.get(i).toString());
        }
    }

    //Livro Functions
    private static void addLivro() {
        System.out.println("(registar um novo livro)");

        System.out.print("Titulo: ");
		String titulo = sc.next();
		System.out.print("Tipo de Emprestimo (NORMAL ou CONDICIONAL): ");
		String tipoEmprestimo = sc.next();
        
        livros.add(new Livro(titulo,tipoEmprestimo));
    }

    private static void printLiv() {
        System.out.println("(imprimir lista de livros)");

        for (int i = 0; i < livros.size(); i++) {
            System.out.println(livros.get(i).toString());
        }  
    }

    //emprestar
    private static void emprestar() {
        System.out.println("(emprestar)");

        System.out.print("nMec: ");
        int nMec = sc.nextInt();
        System.out.print("ID do Livro: ");
		int id = sc.nextInt();

        for (Utilizador utilizador : utilizadores) {
            if( utilizador.getnMec()==nMec ) {
                for (Livro livro : livros) {
                    if( livro.getId() == id ) {
                        if(livro.getDisponivel() && livro.getTipoEmprestimo().equals("NORMAL")) {
                            if(utilizador.addLivroReq(id))
                                livro.setDisponivel(false);
                        }
                    }
                }
            }
        }
    }

    //devolver
    private static void devolver() {
        System.out.println("(devolver)");

        System.out.print("nMec do Aluno: ");
        int nMec = sc.nextInt();
        System.out.print("ID do Livro: ");
        int id = sc.nextInt();

        for (Utilizador utilizador : utilizadores) {
            if( utilizador.getnMec()==nMec ) {
                for (Livro livro : livros) {
                    if( livro.getId() == id ) {
                        if(!livro.getDisponivel()) {
                            if(utilizador.removeLivroReq(id))
                                livro.setDisponivel(true);
                        }
                    }
                }
            }
        }
    }
}