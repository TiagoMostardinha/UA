package aula08.ex1;

public class ClassD extends Veiculo4 {
    protected int peso,maxPassageiros;
    
    //Constructor
    public ClassD(String matricula, String brand, String model, int power, int num_quadro, int max_capacity, int Weight) {
        super(matricula, brand, model, power, num_quadro);
        this.setMPas(max_capacity);
        this.setPe(Weight);
	}

	//set
    public void setPe(int p){
        assert p > 0;
        this.peso = p;
    }
    public void setMPas(int mp){
        assert mp > 0;
        this.maxPassageiros = mp;
    }

    //get..
    public int getPe(){
        return this.peso;
    }
    public int getMPas(){
        return this.maxPassageiros;
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
