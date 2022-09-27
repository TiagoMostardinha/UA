package aula11.ex2;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Scanner;
import java.util.Vector;

public class Departure {
    private String hora;
    private String voo;
    private String companhia;
    private String origem;
    private String atraso;
    private String obs;

    private static HashMap<String,String> comp = new HashMap<>();
    private static HashMap<String,Vector<String>> delay_map = new HashMap<>();
    private static HashMap<String,Integer> fly_map = new HashMap<>();
    

    public Departure(String h,String v,String o,String a) throws IOException{
        this.setHora(h);
        this.setVoo(v);
        this.getComp();
        this.setOri(o);
        this.setAtra(a);
        this.calculateObs();
        this.fillDelay();

        if (!fly_map.containsKey(o))Departure.fly_map.put(o, 0);
        Departure.fly_map.put(o, Departure.fly_map.get(o) + 1);
    }

    public Departure(String h,String v,String o) throws IOException{
        this.setHora(h);
        this.setVoo(v);
        this.getComp();
        this.setOri(o);
        this.atraso = "00:00";
        this.calculateObs();

        if (!fly_map.containsKey(o))Departure.fly_map.put(o, 0);
        Departure.fly_map.put(o, Departure.fly_map.get(o) + 1);
    }

    public void setHora(String h){
        this.hora = h;
    }
    public void setVoo(String v){
        this.voo = v;
    }
    private void getComp(){
        this.companhia = comp.get(this.voo.substring(0,2).toUpperCase());
    }
    public void setOri(String o){
        this.origem = o;
    }
    public void setAtra(String a){
        this.atraso = a;
    }
    public static HashMap<String,Vector<String>> getDMap(){
        return Departure.delay_map;
    } 

    public static HashMap<String,Integer> getFMap(){
        return Departure.fly_map;
    }

    public void calculateObs(){
        String[] atr = this.atraso.split(":");
        String[] ho = this.hora.split(":");

        int m = Integer.parseInt(ho[1]) + Integer.parseInt(atr[1]);
        int h = Integer.parseInt(ho[0]);
        if (m > 60 ){
           h++;
           m = m - 60; 
        }

        this.obs =  String.format("%2d:%2d", h,m);
    }

    public static void setComp() throws IOException{
        File fc = new File("src/aula11/ex2/companhias.txt");
        Scanner scc = new Scanner(fc);

        //Ignore first line
        scc.nextLine();
        
        //read companhias.txt and put in a HashTable
        while(scc.hasNextLine()){
            String[] aux = scc.nextLine().split("\t");
            comp.put(aux[0], aux[1]);
        }
        
        scc.close();
    }

    public void fillDelay() {
        if(!delay_map.containsKey(this.companhia)) delay_map.put(this.companhia, new Vector<String>());
        delay_map.get(this.companhia).add(this.atraso);
    }

    public static String averageDelay(String k,Vector<String> aux){
        double sum_delay = 0;
        for (String s : aux) {
            String[] a = s.split(":");
            sum_delay = Integer.parseInt(a[0]) * 60 + Integer.parseInt(a[1]);
        }

        return String.format("%s = %02.0f:%02.0f",k,(sum_delay / aux.size() > 60) ? (sum_delay / aux.size() / 60) : 0 ,(sum_delay / aux.size() > 60) ? (sum_delay / aux.size() % 60) : sum_delay / aux.size());
    }

    @Override
    public String toString() {
        //07:35 IB 8720 Iberia Madrid 00:25 Previsto: 8:00
        return String.format("%s\t%s\t%s\t%s\t%s\t%s\n", this.hora,this.voo,this.companhia,this.origem,this.hora,this.atraso.equals("00:00") ? "" : ("Previsto: " + this.atraso),this.atraso.equals("00:00") ? "" : ("Previsto: " + this.obs));
    }

}
