package aula07.ex3;

public class AgenciaDeViagens {
    private String nome;
    private String endereco;
    private Alojamento[] alojamentos;
    private Carro[] viaturas;

    AgenciaDeViagens(String nome, String endereco) {
        this.nome = nome;
        this.endereco = endereco;
        this.alojamentos = new Alojamento[10];
        this.viaturas = new Carro[10];
    }

    public String getNome() { return this.nome; }
    public String getEndereco() { return this.endereco; }
}