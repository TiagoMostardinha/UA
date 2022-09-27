import java.io.*;

public class ListRec2 {

	public static void main(String[] args) {
		assert args.length > 0 : "Run w arguments: java -ea ListRec <dir>";
		String dirPath = args.length >=1 ? args[0] : "./";
		try {
			File dir = new File(dirPath);
			listRec2(dir);
		}catch(NullPointerException e) {
			System.err.println("Invalid Path");
			System.exit(1);
		}

	}
	
	public static void listRec2(File dir) {
		File[] dirList = dir.listFiles();
		for(int i = 0; i < dirList.length; i++) {
			if(dirList[i].isDirectory()) {
				System.out.println(dirList[i].getPath());
				listRec2(dirList[i]);
			}else if(dirList[i].isFile()) {
				System.out.println(dirList[i].getPath());
			}
		}
	}

}
