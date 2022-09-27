package aula08.ex2;

public class Carne extends Alimento {
    private VariedadeCarne variedade;

    public Carne(VariedadeCarne variedade, double proteinas, double calorias, double peso) {
        super(proteinas, calorias, peso);
        this.variedade = variedade;
    }

    @Override
    protected boolean vegetariano() {
        return false;
    }

    @Override
    public String toString() {
        return ("Carne " + variedade + super.toString());
    }
}
