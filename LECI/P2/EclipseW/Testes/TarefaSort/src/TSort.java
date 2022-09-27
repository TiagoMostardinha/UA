
public class TSort {

	public static void main(String[] args) {
		Agenda agenda = new Agenda();
	    agenda.novaTarefa(new Tarefa(new Data(1,1,1), new Data(27,6,2012), "Producao"));
	    agenda.novaTarefa(new Tarefa(new Data(2,2,2), new Data(13,7,2012), "Testes"));
	}

}
