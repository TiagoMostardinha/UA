package aula08.ex2;

import java.util.*;

public class Ementa {
    protected String nome, local;
    protected List<Object> listaPratos = new ArrayList<>();

    public Ementa(String nome, String local) {
        setNome(nome);
        setLocal(local);
    }

    public class formatoPrato {
        private Prato prato;
        private DiaSemana diaSemana;

        public formatoPrato(Prato prato, DiaSemana diaSemana) {
            this.prato = prato;
            this.diaSemana = diaSemana;
        }

        public String toString() {
            return String.format("%s, dia %s", this.prato, this.diaSemana);
        }
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getLocal() {
        return local;
    }

    public void setLocal(String local) {
        this.local = local;
    }

    public List<Object> getListaPratos() {
        return listaPratos;
    }

    public void setListaPratos(List<Object> listaPratos) {
        this.listaPratos = listaPratos;
    }

    public void addPrato(Prato prato, DiaSemana diaSemana) {
        this.listaPratos.add(new formatoPrato(prato, diaSemana));
    }

    public String toString() {
        String s = "";
        for (Object p : listaPratos) {
            s += p + "\n";
        }
        return s;
    }
}
