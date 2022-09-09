package aula05.ex3;

public class Circulo {
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
        this.radius = testFGeo.valid(r);
    }

    //equals
    public boolean equals(Circulo ci){
        return this.radius == ci.radius;
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
    public String toString(){
        return String.format("%.2f", this.radius);
    }
}
