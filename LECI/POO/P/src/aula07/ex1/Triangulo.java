package aula07.ex1;

public class Triangulo extends Forma{
    private double lado1;
    private double lado2;
    private double lado3;

    Triangulo(double l1,double l2,double l3){
        this.setL1(l1);
        this.setL2(l2);
        this.setL3(l3);
    }

    //get...
    public double getL1() {
        return this.lado1;
    }
    public double getL2() {
        return this.lado2;
    }
    public double getL3() {
        return this.lado3;
    }

    //set...
    public void setL1(double l){
        assert l > 0;
        this.lado1 = l;
    }
    public void setL2(double l){
        assert l > 0;
        this.lado2 = l;
    }
    public void setL3(double l){
        assert l > 0;
        lado3 = l;
    }

    //equals
    public boolean equals(Triangulo tri){
        return this.lado1 == tri.lado1 && this.lado2 == tri.lado2 && this.lado3 == tri.lado3;// && this.equalColor(tri);
    }

    //validTri
    public void validTri(){
        double aux = Math.sqrt(Math.pow(this.lado1, 2) + Math.pow(this.lado2, 2));
        this.lado3 = (this.lado3 == aux) ? this.lado3 : aux;
    }
    //area
    public double area(){
        double p = this.perimeter() / 2;
        return Math.sqrt(p*(p - this.lado1) + p*(p - this.lado2) + p*(p - this.lado3));
    }

    //perimeter
    public double perimeter(){
        return this.lado1 + this.lado2 + this.lado3;
    }

    //toString
    @Override
    public String toString(){
        return String.format("%.2f %.2f %.2f", this.lado1,this.lado2,this.lado3);
    }

    @Override
    public String doWork() {
        return "Triangulo";
    }

}
