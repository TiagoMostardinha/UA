package aula05.ex4;

public class Utilizador {
    private String nome;
    private int nMec;
    private String curso;

    Utilizador(String n,int nM,String c){
        setNome(n);
        setnMec(nM);
        setCurso(c);
    }

    //set...
    public void setNome(String n){
        assert n.length() > 0;
        this.nome = n;
    }

    public void setnMec(int nM){
        assert nM > 0;
        this.nMec = nM;
    }

    public void setCurso(String c){
        assert c.length() > 0;
        this.curso = c;
    }

    //get...
    public String getNome() {
        return this.nome;
    }
    public int getnMec() {
        return this.nMec;
    }
    public String getCurso() {
        return this.curso;
    }

    //toString
    public String toString() {
        return String.format("Aluno: %d; %s; %s", this.nMec,this.nome,this.curso);
    }
}
