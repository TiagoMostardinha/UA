import java.util.*;
import java.io.*;

public class Simulacao {
	public static final Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		final int NALUNOS = 10;
		Aluno[] t = new Aluno[NALUNOS];
		t[0]= new Aluno(111,"maria.rita",22);
		t[1]= new Aluno(12345,"maria.rita",3);
		t[2]= new Aluno(333,"maria.rita",3);
		t[3]= new Aluno(444,"maria.rita",-1);
		int numAlunos = 4;
		numAlunos = lerTurma(t, numAlunos);
		
		System.out.printf("%nTurma: %n");
		imprimirTurma(t,numAlunos);
		filtrarTurma(t,numAlunos,"turma.txt");
		
		System.out.printf("%nFicheiro:%n");
		listarFicheiro("turma.txt");
		
		imprimeHisto(histograma(t,numAlunos));
	}
	
	
	static boolean validarNome(String s){
		boolean resultado = true;
		
		
		//#1
		boolean digitos = true;
		boolean c = false;
		boolean v = false;
		
		for (int i = 0; i < s.length(); i++){
			char a = s.charAt(i);
			if(Character.isDigit(a)){
				digitos = false;
			}
			else{
				if(a == 'a' || a == 'e' || a == 'i' || a == 'o' || a =='u'){v = true;}
				else{c = true;}
			}
		}
		
		
		if(!digitos && c && v){
			resultado  = true;
		}
		else{
			resultado = false;
		}
		//
		
		
		return resultado;
	}
	
	
	static Aluno lerAluno(){
		Aluno a = new Aluno(0,"",0);
		
		//#2
		a.id = sc.nextInt();
		if(a.id == 0){
			return a;
		}
		a.nota = sc.nextInt();
		a.nome = sc.nextLine();
		//
		
		return a;
	}
	
	
	static int lerTurma(Aluno[] t, int num){
		
		//#3
		int nalunos = num;
		for (int i = 0; i < t.length; i++){
			Aluno a = lerAluno();
			if(a.id == 0){break;}
			t[i] = a;
			nalunos++;
		}
		//
		
		return nalunos;
	}
	
	
	static int[] histograma(Aluno[] a,int num){
		int[] h = new int[0];
		
		//#4
		h = new int[7];
		for (int i = 0; i < num; i++){
			if(a[i].nota <=5 && a[i].nota>=0){
				h[a[i].nota]++;
			}
			else{
				h[6]++;
			}
		}
		//
		
		return h;
		
	}
	
	
	static void filtrarTurma(Aluno[] t,int n,String nomeF)throws IOException{
		
		//#4
		File f = new File(nomeF);
		Scanner kb = new Scanner(nomeF);
		PrintWriter p = new PrintWriter(f);
		for (int i = 0; i < n; i++){
			p.println(alunoToString(t[i]));
		}
		p.close();
		//
		
	}
	
}
class Aluno{
	int id;
	String nome;
	int nota;
	
	Aluno(int i,String n,int no){
		id=i;
		nome = n;
		nota = no;
		
	}
}
