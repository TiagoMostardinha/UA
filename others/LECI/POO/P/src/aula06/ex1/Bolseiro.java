package aula06.ex1;

public class Bolseiro extends Aluno {
    private int bolsa;
    
    Bolseiro(String n,int cc,Date dN,int ibolsa){
        super(n, cc, dN);
        this.bolsa = ibolsa;
    }

    public void setBolsa(int b) {
        this.bolsa = b;
    }

    public int getBolsa() {
        return this.bolsa;
    }

    @Override
    public String toString() {
        return String.format("%s; Bolsa: %d", super.toString(), this.bolsa);
    }
}
