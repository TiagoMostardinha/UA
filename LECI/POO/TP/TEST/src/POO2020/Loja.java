package POO2020;

import java.util.HashSet;
import java.util.Set;

public class Loja {
    private String nome;
    private String endereco;
    private Set<Produto> stock;

    
    //Constructor..
    public Loja(String nome,String endereco){
        this.nome = nome;
        this.endereco = endereco;

        stock = new HashSet<>();
    }

    //get..
    public String getEndereco() {
		return this.endereco;
	}

    //add..
    public void add(Produto produto) {
        this.stock.add(produto);
    }


	public int totalItems() {
		return this.stock.size();
	}


	public Produto getProdutoPelaDescricao(String descricao) {
		for (Produto produto : stock)
			if (produto.getDescricao().equals(descricao))
				return produto;
		return null;
	}


    @Override
	public String toString() {
		String desc = nome + "\n";
		desc += String.format("%10s %-30s %10s %10s\n", "Código", "Produto", "Em Stock", "PVP");
		
		for (Produto p: stock)
			desc += String.format("%10s %-30s %10d %10.2f\n", p.getCodigo(), p.getDescricao(), p.getStock(), p.getPreco());
		
		return desc;
	}


}
