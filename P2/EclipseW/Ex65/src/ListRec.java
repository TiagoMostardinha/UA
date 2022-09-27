import java.io.File;

/**
 * Run with:
 * javac ListRec.java && (java -ea ListRec ../; rm ListRec.class)
 */
public class ListRec {
    public static void main(String[] args) {
        assert args.length > 0 : "Run with arguments: java -ea ListRec <dir>";
        String dirPath = args.length>=1 ? args[0] : "./";
        try{
            File dir = new File(dirPath);
            listRec(dir);
        } catch(NullPointerException e) {
            System.err.println("Invalid Path");
            System.exit(1);
        }  
    }

    public static void listRec(File dir){
        File[] dirList = dir.listFiles();
        for (int i = 0; i < dirList.length; i++) {
            if(dirList[i].isDirectory()) {
                System.out.println(dirList[i].getPath());
                listRec(dirList[i]);
            }else if(dirList[i].isFile()){
                System.out.println(dirList[i].getPath());
            }
        }
    }
}