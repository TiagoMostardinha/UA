package aula10.ex4;

import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashSet;
import java.util.Scanner;

public class ex4 {

    public static void main(String[] args) throws IOException {
        Scanner input = new Scanner(new FileReader("src/aula10/ex4/words.txt"));
        FileWriter writer = new FileWriter("src/aula10/ex4/output.txt");

        HashSet<String> char_2 = new HashSet<>();
        HashSet<String> s_word = new HashSet<>();
        HashSet<String> not_letter = new HashSet<>();

        while (input.hasNext()) {
            String word = input.next();
            //System.out.println(word);

            if(word.length() > 2) char_2.add(word);
            if(word.charAt(word.length() - 1) == 's') s_word.add(word);
            if(word.matches("[a-z]{1,}")) not_letter.add(word);

        }

        System.out.println(char_2.toString());
        System.out.println(s_word.toString());
        System.out.println(not_letter.toString());

        writer.write("\nchar_2:\n\n");

        for (String s : char_2) {
            writer.write(s + '\n');
        }

        writer.write("\ns_word:\n\n");

        for (String s : s_word) {
            writer.write(s + '\n');
        }

        writer.write("\nnot_letter:\n\n");

        for (String s : not_letter) {
            writer.write(s + '\n');
        }

        writer.close();
    }
}
