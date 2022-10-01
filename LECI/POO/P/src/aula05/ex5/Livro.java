package aula05.ex5;

public class Livro{
    private static int nextID = 100;

    private int id;
    private String titulo;
    private String tipoEmprestimo;

    private boolean disponivel;

    Livro(String t){
        this.id = nextID++;

        setTitulo(t);
        setTipoEmprestimo("NORMAL");
        setDisponivel(true);
    }

    Livro(String t, String te){
        this.id = nextID++;

        setTitulo(t);
        setTipoEmprestimo(te);
        setDisponivel(true);
    }

    //set...
    public void setTitulo(String t){
        assert t.length() > 0;
        this.titulo = t;
    }

    public void setTipoEmprestimo(String te){
        assert te.toUpperCase().equals("NORMAL") || te.toUpperCase().equals("CONDICIONAL");
        this.tipoEmprestimo = te.toUpperCase();
    }

    public void setDisponivel(boolean d) {
        this.disponivel = d;
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

    public boolean getDisponivel() {
        return this.disponivel;
    }

    //toString
    public String toString() {
        return String.format("Livro %d; %s; %s", this.id,this.titulo,this.tipoEmprestimo);
    }




}