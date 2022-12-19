package aula06.ex2;
import java.util.Vector;

public class Conjunto {
    private Vector<Integer> conjunto = new Vector<>();

    public void insert(int n) {
        if(this.conjunto.contains(n)) return;
        this.conjunto.add(n);
    }

    public boolean contains(int n) {
        return this.conjunto.contains(n);
    }

    public void remove(int n) {
        assert this.conjunto.contains(n);
        if(this.conjunto.indexOf(n) >= 0) this.conjunto.remove(this.conjunto.indexOf(n));
    }

    public void empty() {
        this.conjunto.clear();
    }

    public int size() {
        return this.conjunto.size();
    }

    public Vector<Integer> getVector(){
        return this.conjunto;
    }

    public Conjunto combine(Conjunto add) {
        Conjunto aux = new Conjunto();

        for (int i : this.conjunto) {
            if(!aux.contains(i)) aux.insert(i);
        }
        for (int i : add.getVector()) {
            if(!aux.contains(i)) aux.insert(i);
        }

        return aux;
    }

    public Conjunto subtract(Conjunto dif) {
        Conjunto aux = this;

        for (int i : dif.getVector()) {
            if(aux.contains(i)) aux.remove(i);
        }

        return aux;
    }

    public Conjunto intersect(Conjunto inter) {
        Conjunto aux = new Conjunto();

        for (Integer i : this.conjunto) {
            for (Integer a : inter.getVector()) {
                if(i == a) aux.insert(a);
            }
        }

        return aux;
    }


    @Override
    public String toString(){
        String s = "";
        for (int i = 0; i < conjunto.size(); i++) {
            s += conjunto.get(i) + " ";
        }

        return s;
    }
}
