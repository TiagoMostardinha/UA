package aula05.ex5;

import java.util.Vector;

public class Utilizador {
    private String nome;
    private int nMec;
    private String curso;

    private Vector<Integer> livrosRequisitados = new Vector<>(3);

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

    public boolean addLivroReq(int id) {
        if(livrosRequisitados.lastElement() == null){
            livrosRequisitados.add(id);
            return true;
        }
        return false;
    }

    public boolean removeLivroReq(int id) {
        for (int i = 0; i < livrosRequisitados.size(); i++) {
            if(livrosRequisitados.get(i) == id){
                livrosRequisitados.remove(i);
                return true;
            }
        }
        return false;
        
    }
}
