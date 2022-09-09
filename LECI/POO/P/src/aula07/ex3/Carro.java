package aula07.ex3;

public class Carro {
    private char classe;
    private String motorizacao;
    private Boolean disponivel;

    Carro(char classe, String motorizacao) {
        assert classe >= 'A' && classe <= 'F';
        assert motorizacao.equals("gasolina") || motorizacao.equals("diesel") || motorizacao.equals("hibrido") || motorizacao.equals("eletrico");
        this.classe = classe;
        this.motorizacao = motorizacao;
        this.disponivel = true;
    }

    public void levantar() {
        assert disponivel;
        this.disponivel = false;
    }

    public void entregar() {
        assert !disponivel;
        this.disponivel = true;
    }
}