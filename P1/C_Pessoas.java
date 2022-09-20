import java.util.*;

public class untitled {
	static final Scanner sc = new Scanner(System.in);
	
	public static void main (String[] args) {
		System.out.println("n de alunos");
		int n = sc.nextInt();
		
		string Turma[] = new Turma[n];
		for (int i = 0; i < Turma.length; i++){
			System.out.printf("Nome do aluno:%n");
			Turma[i] = sc.nextLine();
		}
		
		
	}
}

class Dados {
	string Nome;
	int idade;
	char sexo;
	
}

