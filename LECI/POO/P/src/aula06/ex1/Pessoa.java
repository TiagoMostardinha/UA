package aula06.ex1;

public class Pessoa {
    private String nome;
    private int cc;
    private Date dataNasc;

    Pessoa(String n,int c,Date d){
        setNome(n);
        setCC(c);
        setData(d);
    }
    
    public void setNome(String n) {
        assert n.length() > 0;
        this.nome = n;
    }

    public void setCC(int c) {
        assert c > 0;
        this.cc = c;
    }

    public void setData(Date d) {
        assert Date.valid(d.getDay(),d.getMonth(), d.getYear());
        this.dataNasc = d;        
    }

    public String getNome() {
        return this.nome;        
    }

    public int getCC() {
        return this.cc;        
    }

    public Date getDataNasc() {
        return this.dataNasc;
    }

    @Override
    public String toString() {
        return String.format("%s; CC: %d; Data de Nascimento: %s", this.nome, this.cc, this.dataNasc);
    }
}
