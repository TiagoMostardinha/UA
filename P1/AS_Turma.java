import java.util.*;
import java.io.*;

public class AS_Turma {
	public static final Scanner sc = new Scanner(System.in);
	
	public static void main (String[] args) {
		System.out.printf("Gestao de uma turma:%n1 - Inserir informacao da turma%n2 - Mostrar informacao de um aluno%n3 - Alterar informacao de um aluno%n4 - Listar os alunos ordenados por n mec.%n5 - Listar os alunos ordenados por nota final%n6 - Media das notas finais%n7 - Melhor aluno %n8 - Inserir pesos dos varios testes%n9 - Gravar os dados num ficheiro%n0 - Terminar o programa%n"); 	
		aluno[] turma = new aluno[20];
		int i = 0;
		
		do{
			System.out.printf("%nOpcao: ");
			int c = sc.nextInt();
			switch(c){
				case 1:
				turma[i] = add();
				i++;
				break;
				case 2:
				search(turma);
				break;
				case 3:
				turma = change(turma);
				
				
			}
		}while(true);
	}
	
	public static aluno add(){
		int[] notas = new int[3];
		
		System.out.print("n mec: ");
		int nmec = sc.nextInt();
		
		System.out.printf("Nome: ");
		sc.nextLine();
		String no = sc.nextLine();
		
		System.out.printf("Notas:%n");
		notas = nota(notas);
		
		aluno a = new aluno(nmec,no,notas);
		a.nf();
		return a;
	}
	
	public static int[] nota(int[] a){
		int i = 0;
		do{
			System.out.printf("%d - ",i+1);
			int n = sc.nextInt();
			if(n > 0 && n < 20){
				a[i] = n;
				i++;
			} 
		}while(i != 3);
		
		return a;
	}
	
	
	public static void search(aluno[] a){
		System.out.print("Pesquisar aluno: ");
		sc.nextLine();
		String n = sc.nextLine();
		
		for (int i = 0; i < a.length; i++){
			if(a[i] == null);
			if((a[i].nome).equals(n)){
				printClass(a[i]);
				break;
			}
		}
	}
	
	public static aluno[] change(aluno[] a){
		System.out.println("Pesquisar aluno: ");
		sc.nextLine();
		String n = sc.nextLine();
		
		for (int i = 0; i < a.length; i++){
			if(a[i] == null){
				continue;
			}
			if((a[i].nome).equals(n)){
				a[i] = null;
				add();
				break;
			}
		}
		return a;
	}
	
	public static void printClass(aluno a){
		System.out.println("n mec: "+a.mec);
		System.out.println("Morada: "+a.nome);
		for (int i = 0; i < a.testes.length; i++){
			System.out.printf("Nota %d: %d%n",i+1,a.testes[i]);
		}
	}
	
	public static void ficheiro(aluno[] turma){
		File f = new File("Turma.txt");
		PrintWriter p = new PrinteWriter(f);
		for (int i = 0; i < turma.length; i++){
			p.println(turma[i].nome);
			
		}
		p.close();
	}
}

class aluno{
	int mec;
	String nome;
	int[] testes = new int[3];
	double[] pesos = {0.33,0.33,0.33};
	
	//Nota Final
	double nf(){
		double sum = 0;
		for (int i = 0; i < testes.length; i++){
			sum += testes[i];
		}
		return sum/testes.length; 
	}
	
	//Constructor
	aluno(int m,String n,int[] t){
		mec = m;
		nome = n;
		testes = t;
	}
}

