import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class EventManager {
    private String nome_evento;
    private Map<Client,ArrayList<Event>> client_map = new HashMap<>();

    //Constructor
    public EventManager(String nome_evento) {
        this.nome_evento = nome_evento;
    }

    //get
    public String getNome(){
        return this.nome_evento;
    }

    //add..
    public Client addClient(String nome, String local) {
        Client aux = new Client(nome, local);
        client_map.put(aux, new ArrayList<>());

        return aux;
    }

    public Event addEvent(Client client, LocalDate ld) {
        Event aux = new Event(ld);
        if(!client_map.containsKey(client)) client_map.put(client, new ArrayList<>());

        client_map.get(client).add(aux);

        ArrayList<Event> list = client_map.get(client);
        for (int i = 0; i < list.size(); i++) {
            if(!(list.get(i).getDate() == aux.getDate())) client_map.get(client).add(aux);   
        }

        return aux;
    }


    public int listClients() {
        return client_map.size();
    }


    public int listEvents() {
        int num_events = 0;

        for (Map.Entry<Client, ArrayList<Event>> c : client_map.entrySet()) {
            num_events = c.getValue().size();
        }

        return  num_events;
    }
    
}
