package aula09.ex1;

import java.util.*;

public class Ex1 {
    public static void main(String[] args) {
        ArrayList<Integer> c1 = new ArrayList<>();
        for (int i = 10; i <= 100; i += 10) c1.add(i);

        System.out.println("Size: " + c1.size());

        for (int i = 0; i < c1.size(); i++) System.out.println("Elemento: " + c1.get(i));

        ArrayList<String> c2 = new ArrayList<>();

        c2.add("Vento");
        c2.add("Calor");
        c2.add("Frio");
        c2.add("Chuva");

        System.out.println(c2);
        Collections.sort(c2);
        System.out.println(c2);

        c2.remove("Frio");
        c2.remove(0);

        System.out.println(c2);

        //b)
        System.out.println("b)");

        Set<Pessoa> c3 = new HashSet<>();
        Pessoa a = new Pessoa("Ze",103854,new Date(1, 8, 2001));

        c3.add(new Pessoa("tiago",103944,new Date(2, 4, 2002)));
        c3.add(new Pessoa("Ze",103854,new Date(1, 8, 2001)));
        c3.add(new Pessoa("Goncalo",103653,new Date(2, 4, 2001)));
        c3.add(new Pessoa("kevin",175367,new Date(9, 3, 1964)));
        c3.add(new Pessoa("Maria",136944,new Date(3, 7, 1987)));
        c3.add(a);
        c3.add(a);

        for (Pessoa i : c3) {
            System.out.println(i);
        }

        
        //c
        System.out.println("c)");
        Set<Date> c4 = new TreeSet<>();

        c4.add(new Date(2, 11, 2002));
        c4.add(new Date(7, 5, 2002));
        c4.add(new Date(30, 6, 2002));
        c4.add(new Date(21, 8, 2002));
        c4.add(new Date(14, 1, 2002));
        
        for(Date p : c4) {
            System.out.println(p);
        }
        
    }

}