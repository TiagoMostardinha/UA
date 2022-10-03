package aula08.ex2;

public class PratoVegetariano extends Prato {

    public PratoVegetariano(String nome) {
        super(nome);
    }

    @Override
    public boolean addIngrediente(Alimento al) {
        if (!al.vegetariano()) {
            return false;
        } else {
            return super.addIngrediente(al);
        }
    }

    @Override
    public String toString() {
        return ("Prato " + getNome() + ", composto por " + getConjAlimentos().size()
                + " Ingredientes - Prato Vegetariano");
    }
}
