import java.io.*;

public class Printer_File {
	
	public static void main (String[] args) throws IOException {
		File f = new File("output.txt");
		PrintWriter pwf = new PrintWriter(f);
		pwf.println("ola");
		pwf.close();
	}
}

