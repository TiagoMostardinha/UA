package POO2020;

public class Autor {
    private String nome;
    private int ano_nascimento;

    public Autor(String nome,int ano_nascimento){
        this.nome = nome;
        this.ano_nascimento = ano_nascimento;
    }

    @Override
	public String toString() {
		return nome + " (" + this.ano_nascimento + "-)";
	}
}
