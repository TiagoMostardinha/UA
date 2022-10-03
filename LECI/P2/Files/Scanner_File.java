import java.io.*;
import java.util.*;

public class Scanner_File {
	
	public static void main (String[] args) throws IOException{
		File f = new File("input.txt");
		Scanner scf = new Scanner(f); //scan file
		
		//Lê o ficheiro
		while(scf.hasNextLine()){
			String line = scf.nextLine();
			System.out.println(line);
		}
		
		scf.close();
	}
}

