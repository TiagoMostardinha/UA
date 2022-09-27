public class Agenda {
	private Tarefa[] tarefas = new Tarefa[1000];
	
	public void novaTarefa(Tarefa tarefa){
		//preenche tarefas[]
		for(int i = 0; i < tarefas.length;i++ ) {
			if(tarefas[i] == null) {
				tarefas[i] = tarefa;
				break;
			}
		}
			
		//ordena
		tarefas = sortTarefas(tarefas);
	}
	
	public void escreve() {
		
	}
	
	//public Agenda filtra(Data a,Data b) {
		
	//	return a;
	//}
	
	//
	private Tarefa[] sortTarefas(Tarefa[] tarefas) {
		for(int i = 0; i < tarefas.length; i++) {
			if(tarefas[i+1] == null) break;
			
			if(tarefas[i].inicio().compareTo(tarefas[i+1].inicio()) > 0) {
				Tarefa box = tarefas[i+1];
				tarefas[i+1] = tarefas[i];
				tarefas[i] = box;
			}
		}
		
		return tarefas;
	}
}
