package aula08.ex2;

public class Peixe extends Alimento {
    private TipoPeixe tipo;

    public Peixe(TipoPeixe tipo, double proteinas, double calorias, double peso) {
        super(proteinas, calorias, peso);
        this.tipo = tipo;
    }

    @Override
    protected boolean vegetariano() {
        return false;
    }

    @Override
    public String toString() {
        return ("Peixe " + tipo + super.toString());
    }
}
