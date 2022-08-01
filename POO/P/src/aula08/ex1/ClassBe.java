package aula08.ex1;

public class ClassBe extends ClassB implements Eletrico {
    private int autonomia;
    private int charge;

    public ClassBe(String matricula, String brand, String model, int power, int num_quadro, int capacity, int Weight,int charge) {
        super(matricula,brand,model,power,num_quadro, Weight);
        carregar(charge);
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

    public void setAuto(int a){
        this.autonomia = a;
    }
}