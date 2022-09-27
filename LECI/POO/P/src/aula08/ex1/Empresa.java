package aula08.ex1;

import java.util.Vector;

public class Empresa {
    private String nome, postal, email;
    private Vector<Veiculo> stock = new Vector<>(100);

    Empresa(String n, String p,String e){
        this.setNome(n);
        this.setPostal(p);
        this.setEmail(e);
    }



    //set..
    public void setNome(String n){
        assert n.length() > 0;
        this.nome = n;
    }
    public void setPostal(String p){
        assert p.length() > 0;
        this.postal = p;
    }
    public void setEmail(String e){
        assert e.contains("@") && e.length() > 0;
        this.email = e;
    }
    

    //get..
    public String getNome(){
        return this.nome;
    }
    public String getPostal(){
        return this.postal;
    }
    public String getEmail(){
        return this.email;
    }
    public Vector<Veiculo> getVeiculo(){
        return stock;
    }

    //size...
    public int size(){
        return stock.size();
    }



    public void add(Veiculo v) {
        this.stock.add(v);
    }

    public Veiculo get(int index){
        assert index >= 0 && index < size(): "it must be less than size";
            return stock.get(index);
        }

    
    @Override
    public String toString(){
        String text = String.format("Name : %s; Codigo Postal: %s; Email: %s\n", getNome(), getPostal(), getEmail());
        for (int i = 0; i < this.size(); i++) {
            text += stock.get(i) + "\n";
        }
        return text;
    }

    @Override
    public boolean equals(Object obj){
        if(obj == null)
            return false;
        if(getClass() != obj.getClass())
            return false;
        if(obj == this) 
            return true;
            Empresa other = (Empresa)obj;
        return this.nome.equals(other.getNome()) && this.postal.equals(other.getPostal()) &&
               this.email.equals(other.getEmail());
    }



    public void remove(int numSerie) {
        int i = 0;
        for (Veiculo v : stock) {
            if(((ClassA)v).getPot() == numSerie) break;
            i++;
        }
        stock.remove(i);
    }

    public void removeV(int numQuadro) {
        int i = 0;
        for (Veiculo v : stock) {
            if(((Veiculo4)v).getNQuad() == numQuadro) break;
            i++;
        }
        stock.remove(i);
    }


}