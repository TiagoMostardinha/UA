package aula08.ex1;

enum Tipo {
    DESPORTIVO, ESTRADA
}

public class ClassA extends Veiculo {
    private Tipo tipo;            //desportivo ou estrada

    public ClassA(String matricula, String brand, String model, int power, Tipo type){
        super(matricula, brand, model, power);
        this.setTipo(type);
    }

    //set
    public void setTipo(Tipo t){
        this.tipo = t;
    }

    //get..
    public Tipo getTipo(){
        return this.tipo;
    }

    public String toString() {
        return "Motociclo: " + this.tipo + " ," + super.toString();
    }
    public boolean equals(Object obj) {
        return super.equals(obj) && getClass() == obj.getClass() && this.tipo == ((ClassA) obj).getTipo();
    }
    public int hashCode() {
        return super.hashCode() + Tipo.valueOf(this.tipo.toString()).ordinal() * 100000;
    }
}
