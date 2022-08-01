package aula08.ex1;

public class ClassC extends Veiculo4{
    protected int peso, maxCarga;

    
    public ClassC(String matricula, String brand, String model, int power, int num_quadro, int max_capacity, int Weight) {
        super(matricula, brand, model, power, num_quadro);
        this.setMCar(max_capacity);
        this.setPe(Weight);
    }
    
    //set
    public void setPe(int p){
        assert p > 0;
        this.peso = p;
    }
    public void setMCar(int mc){
        assert mc > 0;
        this.maxCarga = mc;
    }


    //get..
    public int getPe(){
        return this.peso;
    }
    public int getMCar(){
        return this.maxCarga;
    }
    @Override
    public void trajeto(int quilometros) {
        // TODO Auto-generated method stub
        
    }
    @Override
    public int ultimoTrajeto() {
        // TODO Auto-generated method stub
        return 0;
    }
    @Override
    public int distanciaTotal() {
        // TODO Auto-generated method stub
        return 0;
    }
    @Override
    public String toString() {
        // TODO Auto-generated method stub
        return null;
    }
    @Override
    public boolean equals(Object obj) {
        // TODO Auto-generated method stub
        return false;
    }
    
    
}
