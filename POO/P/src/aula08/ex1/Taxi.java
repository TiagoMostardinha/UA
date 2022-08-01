package aula08.ex1;

public class Taxi extends ClassB{
    private int licenca;

    //Constructor...
    public Taxi(String matricula, String brand, String model, int power, int num_quadro, int capacity, int license) {
        super(matricula, brand, model, power, num_quadro, capacity);
        this.setLi(license);
    }

    public void setLi(int li){
        assert li > 0;
        this.licenca = li;
    }


    //get..
    public int getLi(){
        return this.licenca;
    }
}
