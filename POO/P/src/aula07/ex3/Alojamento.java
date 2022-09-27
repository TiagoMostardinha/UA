package aula07.ex3;

public class Alojamento {
    private String codigo;
    private String nome;
    private String local;
    private Double preco;
    private Boolean disponivel;
    private Double avaliacao;
    private int avalicaoCounter;

    Alojamento(String codigo, String nome, String local, Double preco) {
        this.codigo = codigo;
        this.nome = nome;
        this.local = local;
        this.preco = preco;
        this.disponivel = true;
        this.avaliacao = 0.0;
    }

    public void checkIn() {
        this.disponivel = false;
    }

    public void checkOut(int avaliacao) {
        this.disponivel = true;
        if( avaliacao >= 1 && avaliacao <= 5 ) {
            this.avaliacao = (this.avaliacao*this.avalicaoCounter + avaliacao) / (this.avalicaoCounter+1);
            this.avalicaoCounter++;
        }
    }
}