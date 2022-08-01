package aula08.ex2;

public class PratoDieta extends Prato {
    private double limiteCalorias;

    public PratoDieta(String nome, double limiteCalorias) {
        super(nome);
        this.limiteCalorias = limiteCalorias;
    }

    @Override
    public boolean addIngrediente(Alimento al) {
        if (this.caloriasPrato() + al.getCalorias() > limiteCalorias) {
            return false;
        } else {
            return super.addIngrediente(al);
        }
    }

    @Override
    public String toString() {
        return String.format("Prato %s, composto por %d Ingredientes - Dieta (%.1f calorias)", this.getNome(),
                conjAlimentos.size(), this.caloriasPrato());
    }
}
