package POO2020;

public class Electrodomestico extends Produto{
    public static final int IVA = 23;

    private String tipoEletro;
    private String marca;
    private String modelo;
    private ClasseEnergetica classe_energetica;
    private double potencia;


    //Constructor
    public Electrodomestico(String tipoEletro,String marca,String modelo,int potencia,double preco){
        super("E", preco);

        this.tipoEletro = tipoEletro;
        this.marca = marca;
        this.modelo = modelo;
        this.potencia = potencia;
    }

    public Electrodomestico(String tipoEletro,String marca,String modelo,double preco){
        super("E",preco);
        
        this.tipoEletro = tipoEletro;
        this.marca = marca;
        this.modelo = modelo;
    }


    //set..
    public void setClasse(ClasseEnergetica classe) {
        this.classe_energetica = classe;
    }

    //get..
    public ClasseEnergetica getClasse() {
		return this.classe_energetica;
	}

	@Override
	public double precoVendaAoPublico() {
		return this.getPreco()*(1+IVA/100);
	}

	@Override
	public String getDescricao() {
		return this.tipoEletro+":"+this.marca+"/"+this.modelo;
	}

    @Override
	public String toString() {
		return "Electrodomestico ["+ this.getCodigo() + " " + tipoEletro + " " + marca + " " + modelo + " " + classe_energetica
				+ " " + potencia + "]";
	}

}
