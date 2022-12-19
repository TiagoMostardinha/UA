package aula08.ex1;

public class ClassDe extends ClassD implements Eletrico {
    private int autonomia;
    private int charge;

    public ClassDe(String matricula, String brand, String model, int power, int num_quadro, int max_capacity, int Weight, int c) {
        super(matricula, brand, model, power, num_quadro, max_capacity, Weight);
        carregar(c);
    }

    public int autonomia() {
        return this.autonomia;
    }

    public void carregar(int percentagem) {
        this.charge += percentagem;
    }
    public int getCharge() {
        return this.charge;
    }
}
