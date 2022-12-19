package aula05.ex3;

public class Retangulo {
    private double comprimento;
    private double altura;

    Retangulo(double c, double a){
        this.setAlt(a);
        this.setComp(c);
    }

    //get...
    public double getComp() {
        return this.comprimento;
    }
    public double getAlt() {
        return this.altura;
    }

    //set..
    public void setComp(double c){
        assert c > 0;
        this.comprimento = testFGeo.valid(c);
    }
    public void setAlt(double a){
        assert a > 0;
        this.altura = testFGeo.valid(a);
    }
    
    //equals
    public boolean equals(Retangulo ret){
        return this.comprimento == ret.comprimento && this.altura == ret.altura;
    }

    //area
    public double area(){
        return this.comprimento * this.altura;
    }

    //perimeter
    public double perimeter(){
        return 2 * this.comprimento + 2 * this.altura;
    }

    //toString
    public String toString(){
        return String.format("%.2f %.2f", this.comprimento,this.altura);
    }

}
