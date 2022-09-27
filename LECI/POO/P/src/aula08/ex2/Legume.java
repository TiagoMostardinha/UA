package aula08.ex2;

public class Legume extends Alimento{
    private String nome;

    public Legume(String nome, double proteinas, double calorias, double peso) {
        super(proteinas, calorias, peso);
        this.nome = nome;
    }

    @Override
    protected boolean vegetariano() {
        return true;
    }
    
    @Override
    public String toString() {
        return ("Legume " + nome + super.toString());
    }
}
