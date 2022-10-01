package aula11.ex2;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Hashtable;
import java.util.Scanner;
import java.util.Set;

public class ex2 {
    public static void main(String[] args) throws IOException{
        File fv = new File("src/aula11/ex2/voos.txt");
        File out = new File("src/aula11/ex2/Infopublico.txt");
        File city = new File("src/aula11/ex2/cidades.txt");

        Scanner scv = new Scanner(fv);
        FileWriter writer = new FileWriter(out);
        FileWriter writer_city = new FileWriter(city);

        Hashtable<String,Departure> depart = new Hashtable<>();

        // Ignore Sigla,Companhia,Voo,...
        scv.nextLine();

        // Fill companies
        Departure.setComp();

        // Read voo.txt and put in a HashTable
        while(scv.hasNextLine()){
            String[] info_voo = scv.nextLine().split("\t");
            if(info_voo.length == 4) depart.put(info_voo[0], new Departure(info_voo[0],info_voo[1],info_voo[2],info_voo[3]));
            if(info_voo.length == 3) depart.put(info_voo[0], new Departure(info_voo[0],info_voo[1],info_voo[2]));
        }

        // Header
        writer.write("Hora\tVoo\t\tCompanhia\tOrigem\tAtraso\tObs");
        System.out.println("Hora\tVoo\tCompanhia\tOrigem\tAtraso\tObs\n\n-------------------------------------------\n");

        // Write in output.txt with the HashTable data
        Set<String> depart_keys = depart.keySet();
        for (String key : depart_keys) {
            System.out.println(depart.get(key).toString());
            writer.write(depart.get(key).toString());
        }

        // Average Print
        System.out.println("Companhia\tAverage Delay");
        Set<String> delay_keys = Departure.getDMap().keySet();
        for (String key : delay_keys) {
            System.out.println(Departure.averageDelay(key, Departure.getDMap().get(key)));
        }

        // Departures Prints
        writer_city.write("Origem\tVoos");
        Set<String> fly_keys = Departure.getFMap().keySet();
        for (String key : fly_keys) {
            writer_city.write(key + " = " + Departure.getFMap().get(key) + '\n');
        }

        

        writer.close();
        scv.close();
        writer_city.close();
    }
}