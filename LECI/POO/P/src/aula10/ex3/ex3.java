package aula10.ex3;

import java.util.HashMap;
import java.util.Vector;

public class ex3 {
    public static void main(String[] args) {
        HashMap<Character,Vector<Integer>> hmap = new HashMap<>();

        String s = "Hello World";
        int i = 0;

        for (Character c : s.toCharArray()) {
            if(!hmap.containsKey(c)) hmap.put(c,new Vector<Integer>());
            hmap.get(c).add(i);
            i++;
        }

        System.out.println(hmap.toString());
    }
}
