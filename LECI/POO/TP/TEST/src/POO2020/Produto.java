package POO2020;

public abstract class Produto implements PVP{
    private static int proximoCodigo = 1000;

    private String codigo;
    private int quantidade;
    private double preco;

    public abstract String getDescricao();

    //Constructor
    public Produto(String codigo,double preco){
        this.codigo = codigo + proximoCodigo;
        proximoCodigo+=2;

        this.quantidade = 0;
        this.preco = preco;
    }

    //get..
    public String getCodigo(){
        return this.codigo;
    }

    public double getPreco(){
        return this.preco;
    }

    public int getStock() {
		return quantidade;
	}

    //stock..
    public void setStock(int quantidade) {
		this.quantidade = quantidade;
	}
	
	public void addStock(int quantidade) {
		this.quantidade += quantidade;
	}

    public boolean vender(int quantidade) {
		if (this.quantidade < quantidade)
			return false;
		
		this.quantidade -= quantidade;
		return true;
	} 
}
