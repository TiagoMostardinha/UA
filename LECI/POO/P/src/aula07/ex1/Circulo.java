package aula07.ex1;

public class Circulo extends Forma{
    private double radius;

    Circulo(double r){
        this.setCircle(r);
    }

    //get...
    public double getRadius() {
        return this.radius;
    }
    
    //set...
    public void setCircle(double r){
        assert r > 0;
        this.radius = r;
    }

    //equals
    public boolean equals(Circulo ci){
        return this.radius == ci.radius;// && this.equalColor(ci);
    }

    //area
    public double area(){
        return Math.PI * Math.pow(this.radius, 2);
    }

    //perimeter
    public double perimeter(){
        return 2 * Math.PI * this.radius;
    }

    //toString
    @Override
    public String toString(){
        return String.format("%.2f", this.radius);
    }

    @Override
    public String doWork() {
        return "Circulo";
    }
}
