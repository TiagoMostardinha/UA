package aula08.ex2;

import java.util.*;

public class Prato {
    protected String nome;
    protected List<Alimento> conjAlimentos = new ArrayList<>();

    public Prato(String nome) {
        setNome(nome);
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public List<Alimento> getConjAlimentos() {
        return conjAlimentos;
    }

    public void setConjAlimentos(List<Alimento> conjAlimentos) {
        this.conjAlimentos = conjAlimentos;
    }

    public boolean addIngrediente(Alimento al) {
        return conjAlimentos.add(al);
    }

    public double caloriasPrato() {
        double calorias = 0;
        for (Alimento a : conjAlimentos) {
            calorias += (a.getCalorias()*a.getPeso()/100);
        }
        return calorias;
    }

    public String toString() {
        return ("Prato " + getNome() + ", composto por " + getConjAlimentos().size() + " Ingredientes");
    }
}
