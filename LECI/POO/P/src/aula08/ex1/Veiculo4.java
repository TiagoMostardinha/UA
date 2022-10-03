package aula08.ex1;

public abstract class Veiculo4 extends Veiculo{
    protected int nQuadro;

    //Constructor...
    Veiculo4(String matricula, String brand, String model, int power,int nq) {
        super(matricula, brand, model, power);
        this.setNQuad(nq);
    }

    //set...
    public void setNQuad(int nq){
        assert nq > 0;
        this.nQuadro = nq;
    }

    //get..
    public int getNQuad(){
        return this.nQuadro;
    }
    
}