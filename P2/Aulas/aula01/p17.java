import java.util.*;
import java.io.*;

public class p17 {
	
	public static void main (String[] args) throws IOException {
		//Scanner
		File fin = new File("in17.txt");
		Scanner scf = new Scanner(fin);
		
		//Printer
		File fout = new File("out17.txt");
		PrintWriter pw = new PrintWriter(fout);
		
		//Copy
		while(scf.hasNextLine()){
			
			String l = scf.nextLine(); //lê
			pw.println(l); //escreve
			
		}
		
		scf.close();
		pw.close();		
	}
}

