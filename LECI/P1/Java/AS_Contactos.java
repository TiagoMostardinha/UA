import java.util.*;

public class AS_Contactos {
	public static final Scanner sc = new Scanner(System.in);
	
	public static void main (String[] args) {
		char c;
		contacto[] agenda = new contacto[100];
		
		
		System.out.printf("Gestao de uma agenda:%nI - Inserir um contacto%nP - Pesquisar contacto por nome%nE - Eliminar um contacto%nM - Mostrar os contactos%nO - Mostrar contactos Ordenados pelo nome%nV - Validar enderecos de email%nA - Apagar a agenda%nT - Terminar o programa%n");
		
		while(true){
			//c
			System.out.print("Opcao: ");
			c = sc.next().charAt(0);
			
			if(Character.toString(c).equals("I")){
				agenda = AddnFill(agenda);
			}
			if(Character.toString(c).equals("P")){
				search(agenda);
			}
			if(Character.toString(c).equals("E")){
				agenda = erase(agenda);
			}
			if(Character.toString(c).equals("M")){
				showAgenda(agenda);
			}
			if(Character.toString(c).equals("O")){
				contacto[] clone = sortA(agenda);
				showAgenda(clone);
			}
			if(Character.toString(c).equals("V")){
				System.out.printf("Email valido %b%n",emailval(agenda));
			}
			if(Character.toString(c).equals("A")){
				agenda = null;
			}
			if(Character.toString(c).equals("T")){break;}
		}
	}
	
	public static contacto add (){
		System.out.print("Nome: ");
		sc.nextLine();
		String no = sc.nextLine();
		
		System.out.printf("Morada: ");
		String mo = sc.nextLine();
		
		System.out.printf("Telefone: ");
		int te = sc.nextInt();
		
		System.out.printf("Email: ");
		sc.nextLine();
		String em = sc.nextLine();
		
		contacto a = new contacto(no,mo,te,em);
		return a;
	}
	
	public static contacto[] AddnFill(contacto[] a){
		for (int i = 0; i < a.length; i++){
			if(a[i] == null){
				a[i] = add();
				break;
			}	
		}
		return a;
		
	}
	
	public static void search(contacto[] a){
		System.out.println("Pesquisar contacto: ");
		sc.nextLine();
		String n = sc.nextLine();
		
		for (int i = 0; i < a.length; i++){
			if((a[i].nome).equals(n)){
				printClass(a[i]);
				break;
			}
		}
	}
	
	public static void printClass(contacto in){
		System.out.println("Nome: "+in.nome);
		System.out.println("Morada: "+in.morada);
		System.out.println("Telefone: "+in.tel);
		System.out.println("Email: "+in.email);
	}
	
	public static contacto[] erase(contacto[] a){
		System.out.println("Eliminar contacto: ");
		sc.nextLine();
		String n = sc.nextLine();
		
		for (int i = 0; i < a.length; i++){
			if((a[i].nome).equals(n)){
				a[i] = null;
				System.out.println("Done.");
				break;
			}
		}
		return a;
	}
	
	public static void showAgenda(contacto[] a){
		System.out.println("Lista de Contactos: ");
		for (int i = 0; i < a.length; i++){
			if(a[i] != null){
				System.out.println(a[i].nome);
			}
		}
	}
	
	public static contacto[] sortA(contacto[] a){
		//UpperCase
		char c;
		for (int i = 0; i < a.length; i++)
		{
			if(a[i] == null){
				break;
				}
			c = a[i].nome.charAt(0);
			a[i].nome = a[i].nome.replace(c,Character.toUpperCase(c));
			
		}
		
		//count length
		int count = 0;
		for (int k = 0; k < a.length; k++){
			if(a[k] != null){
				count++;
			}
		}
		
		
		//sort
		String sub = a[0].nome;
		
		for (int j = 0; j < count-1; j++){
			if(a[j] == null){continue;}
			//
			if(((int) a[j].nome.charAt(0)) > (int) a[j+1].nome.charAt(0)){
				sub = a[j+1].nome;
				a[j+1].nome = a[j].nome;
				a[j].nome = sub;
			}
		}
		
		return a;
	}
	
	public static boolean emailval(contacto[] a){
		System.out.println("Validar email: ");
		sc.nextLine();
		String n = sc.nextLine();
		boolean b = false;
		
		//count length
		int count = 0;
		for (int z = 0; z < a.length; z++){
			if(a[z] != null){
				count++;
			}
		}
		
		for (int i = 0; i < count; i++){
			if((a[i].nome).equals(n)){
				for (int k = 0; k < a[i].email.length(); k++){
					if(Character.toString(a[i].email.charAt(k)).equals("@")){
						String r = a[i].email.substring(a[i].email.indexOf("@")+1);
						if(r.equals("gmail.com") || r.equals("hotmail.com")){
							b = true;
							continue;
						}
						else{
							b = false;
						}
					}
				}
			}
		}
		return b;
	}
}

class contacto{
	String nome;
	String morada;
	int tel;
	String email;
	
	contacto(String n,String m,int t,String e){
		nome = n;
		morada = m;
		tel = t;
		email = e;
	}
}

