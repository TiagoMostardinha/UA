import java.io.*;

public class FindFile {

	public static void main(String[] args) {
		assert args.length == 2 : "Run with arguments: java -ea FindFile <file> <dir>";
		String dirPath = args[1];
		String fileName = args[0];
		try {
			File dir = new File(dirPath);
			findName(dir, fileName);
		}catch(NullPointerException e) {
			System.err.println("Invalid Path");
			System.exit(1);
		}
		
	}
		
	
	public static void findName(File dir, String fileName) {
		File[] dirList = dir.listFiles();
		
		for(int i = 0; i < dirList.length; i++) {
			if(dirList[i].isDirectory()) {
				findName(dirList[i],fileName);
			}else if(dirList[i].isFile()) {
				if(dirList[i].getName().indexOf(fileName) != -1) {
					System.out.println(dirList[i].getPath());
				}
			}
		}
	}

}
