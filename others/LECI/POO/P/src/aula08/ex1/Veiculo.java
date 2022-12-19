package aula08.ex1;

import java.util.Vector;

abstract class Veiculo implements KmPercorridosInterface{
    protected String matricula, marca, modelo;
    protected int potencia;
    
    private Vector<Integer> trajetos = new Vector<>();

    //abstracts..
    //public abstract boolean equals(Object obj);

    //Constructor...
    Veiculo(String matricula, String brand, String model, int power){
        setMat(matricula);
        setMarca(brand);
        setMod(model);
        setPot(power);
    }   


    //set..
    public void setMat(String m){
        assert m.length() == 6;
        this.matricula = m;
    }
    public void setMarca(String m){
        assert m.length() != 0;
        this.marca = m;
    }
    public void setMod(String m){
        assert m.length() != 0;
        this.modelo = m;
    }
    public void setPot(int p){
        assert p >= 0;
        this.potencia = p;
    }

    //get..
    public String getMat(){
        return this.matricula;
    }
    public String getMar(){
        return this.marca;
    }
    public String getMod(){
        return this.modelo;
    }
    public int getPot(){
        return this.potencia;
    }

    @Override
    public void trajeto(int quilometros) {
        this.trajetos.add(quilometros);
    }
    @Override
    public int ultimoTrajeto() {
        return this.trajetos.lastElement();
    }
    @Override
    public int distanciaTotal() {
        int sum = 0;
        for(int trajeto : this.trajetos) {
            sum += trajeto;
        }
        return sum;
    }

    public String toString() {
        return String.format("Viatura: %s %s %s %dcv", this.matricula, this.marca, this.modelo, this.potencia);
    }

}