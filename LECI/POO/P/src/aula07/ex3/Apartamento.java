package aula07.ex3;

public class Apartamento extends Alojamento {
    private int numQuartos;

    Apartamento(String codigo, String nome, String local, Double preco, int numQuartos) {
        super(codigo, nome, local, preco);
        this.numQuartos = numQuartos;
    }

    public int getNumQuartos() { return this.numQuartos; }
}
