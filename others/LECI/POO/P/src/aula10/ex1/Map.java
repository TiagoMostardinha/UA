package aula10.ex1;

import java.util.HashMap;

public class Map {
    public static void main(String[] args) {
        HashMap<String,String> map = new HashMap<String, String>();

        map.put("branco", "Que tem a cor de neve");
        map.put("azul", "cor de oceano");
        map.put("verde", "cor de relva");
        map.put("castanho", "cor de  m");
        map.put("joao", "cor de telhado");

        map.put("azul", map.get("azul").replaceAll("oceano", "lagoa"));
        map.remove("joao");
        
        for (HashMap.Entry<String,String> b : map.entrySet()) {
            System.out.println(b.getKey() + " " + b.getValue() + " :)");
        }

        for (HashMap.Entry<String, String> b : map.entrySet()) {
            System.out.println(b.getKey() + " :)");
        }

        for (HashMap.Entry<String, String> b : map.entrySet()) {
            System.out.println(b.getValue() + " :)");
        }
    }
}
