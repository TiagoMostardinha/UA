package aula07.ex3;

public class QuartoDeHotel extends Alojamento {
    private String tipo;

    QuartoDeHotel(String codigo, String nome, String local, Double preco, String tipo) {
        super(codigo, nome, local, preco);

        assert tipo.equals("single") || tipo.equals("double") || tipo.equals("twin") || tipo.equals("triple");
        this.tipo = tipo;
    }

    public String getTipo() { return this.tipo; }
}