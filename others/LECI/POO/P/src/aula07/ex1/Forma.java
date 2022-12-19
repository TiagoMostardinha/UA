package aula07.ex1;

abstract class Forma {
    private String cor;

    public abstract double area();
    public abstract double perimeter();  
    public abstract String toString();
    public abstract String doWork(); 

    //get..
    public String getCor(){
        return this.cor;
    }

    //set..
    public void setCor(String c){
        this.cor = c;
    }

    public boolean equalColor(Forma f){
        return this.cor == f.cor;
    }
}
