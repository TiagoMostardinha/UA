public class Tarefa {
    private Data inicio,fim;
    private String texto = "";

    public Tarefa(Data inicio, Data fim, String texto){
    	assert inicio.compareTo(fim) < 0 : "Inicio = Fim";
    	assert texto != null && texto != "" : "Vazio";
        this.inicio = inicio;
        this.fim = fim;
        this.texto = texto;
    }

    public String toString() {
        return String.format("%s\t%s\t%s", inicio, fim, texto);
    }

    public Data inicio() { return inicio; };
    public Data fim() { return fim; };
    public String texto() { return texto; };
}