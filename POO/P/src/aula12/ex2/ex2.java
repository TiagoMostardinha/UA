package aula12.ex2;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;
import java.util.Set;
import java.util.TreeMap;
import java.util.HashSet;
import java.util.Map;

public class ex2 {
    public static void main(String[] args) throws IOException {
        File f = new File("src/aula12/ex2/movies.txt");
        File fo = new File("src/aula12/ex2/myselection.txt");
        Scanner sc = new Scanner(f);
        FileWriter writer = new FileWriter(fo);

        TreeMap<String,Movie> tree = new TreeMap<>();

        //Ignore first Line
        sc.nextLine();


        //fill tree
        while(sc.hasNextLine()){
            String a[] = sc.nextLine().split("\t");
            tree.put(a[0],new Movie(a[0],Double.parseDouble(a[1]), a[2], a[3],Integer.parseInt(a[4])));
        }

        sc.close();
        
        // print tree
        System.out.printf("%-30s %-2s %-7s %-15s %-3s\n","name","score","rating","genre","running time");
        for (Map.Entry<String, Movie> t : tree.entrySet()) {
            System.out.println(t.getValue().toString());
        }

        
        // --------------------------------------------------
        // Tree Score Descendent
        System.out.println("\n\nTree Score Descendent");

        TreeMap<Double,Movie> tree_score = new TreeMap<>();
        for (Map.Entry<String, Movie> t : tree.entrySet()) {
            tree_score.put((double) t.getValue().getScore(), t.getValue());
        }

        System.out.printf("%-30s %-2s %-7s %-15s %-3s\n","name","score","rating","genre","running time");
        Set<Double> key_score = tree_score.descendingKeySet();
        for (Double key : key_score) {
            System.out.println(tree_score.get(key).toString());
        }

        // --------------------------------------------------
        // Tree Running Time Ascendent
        System.out.println("\n\nTree Score Ascendant");

        TreeMap<Integer,Movie> tree_run = new TreeMap<>();
        for (Map.Entry<String, Movie> t : tree.entrySet()) {
            tree_run.put((int) t.getValue().getScore(), t.getValue());
        }

        System.out.printf("%-30s %-2s %-7s %-15s %-3s\n","name","score","rating","genre","running time");
        Set<Integer> key_run = tree_run.keySet();
        for (Integer key : key_run) {
            System.out.println(tree_run.get(key).toString());
        }

        // --------------------------------------------------
        // All Genres
        HashSet<String> hash_genres = new HashSet<>();
        for (Map.Entry<String, Movie> t : tree.entrySet()) {
            hash_genres.add(t.getValue().getGenre());
        }

        System.out.println("\n\nGenres: ");
        for (String key : hash_genres) {
            System.out.println(key);
        }

        // --------------------------------------------------
        // Selection Movies

        HashSet<Movie> hash_sel = new HashSet<>();
        for (Map.Entry<String, Movie> t : tree.entrySet()) {
            if(t.getValue().getScore() > 60 && t.getValue().getGenre().equals("comedy")) hash_sel.add(t.getValue());
        }

        writer.write(String.format("%-30s %-2s %-7s %-15s %-3s\n","name","score","rating","genre","running time"));
        for (Movie movie : hash_sel) {
            writer.write(movie.toString()+"\n");
        }

        writer.close();
        sc.close();
    }
}
