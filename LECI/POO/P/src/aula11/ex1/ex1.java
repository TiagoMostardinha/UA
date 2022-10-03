package aula11.ex1;

import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import java.util.TreeMap;
import java.util.Vector;

public class ex1 {
    public static void main(String[] args) throws IOException {
        File f = new File("src/aula11/ex1/major.txt");
        Scanner sc = new Scanner(f, "UTF-8");

        Vector<String> words = new Vector<>();
        TreeMap<String,Vector<String>> tree = new TreeMap<>();

        //Read all words of the file
        while(sc.hasNext()){
            // \t\n.,:'‘’;?!-*{}=+&/()[]”“\"\'
            String w = sc.next().replaceAll("[^A-zÀ-ú0-9]", "\0");
            w = w.replaceAll("\\W{3,}", "\0");

            
            words.add(w);
        }

        //Fill the tree
        for (int i = 0; i < words.size() - 1; i++) {
            if(!tree.containsKey(words.get(i))) tree.put(words.get(i),new Vector<String>());
            tree.get(words.get(i)).add(words.get(i+1) + "=1");
        }
        

        System.out.println(tree.toString());

        sc.close();
    }
}
