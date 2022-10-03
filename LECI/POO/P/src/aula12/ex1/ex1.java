package aula12.ex1;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;
import java.util.TreeMap;

public class ex1 {
    public static void main(String[] args) throws FileNotFoundException {
        File f = new File("src/aula12/ex1/input.txt");
        Scanner sc = new Scanner(f);
        int n_word = 0;

        TreeMap<String,Integer> tree = new TreeMap<>();
        
        while(sc.hasNext()){
            String a = sc.next().replaceAll("[^a-zA-Z0-9]", "\0");
            if(!tree.containsKey(a)) tree.put(a,0);
            tree.put(a,tree.get(a) + 1);
            n_word++;
        }

        System.out.println("Número Total de Palavras: " + n_word);
        System.out.println("Número de Diferentes Palavras: " + tree.keySet().size());
        System.out.println(tree.keySet());

        sc.close();
    }
}
