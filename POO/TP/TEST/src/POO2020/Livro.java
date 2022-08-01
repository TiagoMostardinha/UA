package POO2020;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class Livro extends Produto{
    public static final int IVA = 6;
    
    private String titulo;
    private Set<Autor> autores;

    //Constructor
    public Livro(String titulo,double preco){
        super("L", preco);

        this.titulo = titulo;
        this.autores = new HashSet<>();
    }

    public Livro(String titulo,double preco,List<Autor> autores){
        super("L", preco);

        this.titulo = titulo;
        this.autores = new HashSet<>();

        for (Autor autor : autores) {
            this.autores.add(autor);   
        } 
    }


    //get..
    public String getTitulo() {
        return this.titulo;
    }

    public Set<Autor> getLista() {
		return this.autores;
	}


    //add..
    public void add(Autor autor) {
        this.autores.add(autor);
    }


    //autores..
    public Set<Autor> autores() {
        return this.autores;
    }

    public int numeroAutores() {
        return this.autores.size();
    }


	@Override
	public double precoVendaAoPublico() {
		return this.getPreco()*(1+IVA/100);
	}

	@Override
	public String getDescricao() {
		return this.getTitulo();
	}
}
