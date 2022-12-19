package aula08.ex1;

public class ClassB extends Veiculo4    {
    protected int capBagageira;

    public ClassB(String matricula, String brand, String model, int power, int num_quadro, int capacity){
        super(matricula, brand, model, power, num_quadro);
        this.setCBag(capacity);
    }

    //set
    public void setCBag(int cb){
        assert cb > 0;
        this.capBagageira = cb;
    }

    //get..
    public int getCBag(){
        return this.capBagageira;
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
        return "ClassB: " + this.nQuadro + " " + this.capBagageira + " ," + super.toString();
    }

    @Override
    public boolean equals(Object obj) {
        return super.equals(obj) && getClass() == obj.getClass() && this.nQuadro == ((ClassB) obj).getNQuad() && this.capBagageira == ((ClassB) obj).getCBag();
    }

    @Override
    public int hashCode() {
        return super.hashCode() + this.nQuadro + this.capBagageira;
    }

}
