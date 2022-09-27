import java.io.*;
import java.util.*;

public class Copy_File {
	
	public static void main (String[] args) throws IOException {
		//Scanner
		File fin = new File("input.txt");
		Scanner scf = new Scanner(fin);
		
		//Printer
		File fout = new File("output.txt");
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

