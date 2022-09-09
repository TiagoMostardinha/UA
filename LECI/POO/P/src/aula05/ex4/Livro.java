package aula05.ex4;

public class Livro{
    private static int nextID = 100;

    private int id;
    private String titulo;
    private String tipoEmprestimo;

    Livro(String t){
        this.id = nextID++;

        setTitulo(t);
        setTipoEmprestimo("NORMAL");
    }

    Livro(String t, String te){
        this.id = nextID++;

        setTitulo(t);
        setTipoEmprestimo(te);
    }

    //set...
    public void setTitulo(String t){
        assert t.length() > 0;
        this.titulo = t;
    }

    public void setTipoEmprestimo(String te){
        assert te.toUpperCase().equals("NORMAL") || te.toUpperCase().equals("CONDICIONAL");
        this.tipoEmprestimo = te;
    }


    //get...
    public int getId(){
        return this.id;
    }

    public String getTitulo() {
        return this.titulo;
    }

    public String getTipoEmprestimo(){
        return this.tipoEmprestimo;
    }

    //toString
    public String toString() {
        return String.format("Livro %d; %s; %s", this.id,this.titulo,this.tipoEmprestimo);
    }




}