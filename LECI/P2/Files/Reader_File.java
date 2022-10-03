import java.io.*;
import java.util.Scanner;

public class Reader_File {

	public static void main(String[] args) throws IOException {
		File f = new File("input.txt");
		Scanner sc = new Scanner(f);
		
		while(sc.hasNextLine()) {
			System.out.println(sc.nextLine());
		}
		
		sc.close();

	}

}
