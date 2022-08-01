import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class Event implements IEvent{
    private LocalDate date;
    private List<Activity> atividades = new ArrayList<>();
    

    public Event(LocalDate ld){
        this.date = ld;
    }

    @Override
    public Event addActivity(Activity activity) {
        int cat = 0;
        for (Activity a : atividades) {
            if(a.getClass().getCanonicalName().equals("Sport")){
                if(!(((Sport) a).getModality().equals(((Sport) activity).getModality()))) atividades.add(activity);
            }
            if(a.getClass().getCanonicalName().equals("Culture")){
                if(!(((Culture) a).getOption().equals(((Culture) activity).getOption()))) atividades.add(activity);
            }
            if(a.getClass().getCanonicalName().equals("Catering")){
                if(!(((Catering) a).getOption().equals(((Catering) activity).getOption()))){
                    if(cat < 1){
                        atividades.add(activity);
                        cat++;
                    }
                } 
            }
        }
        return this;
    }

    @Override
    public LocalDate getDate() {
        return this.date;
    }

    @Override
    public double totalPrice() {
        int sum = 0;
        for (Activity activity : atividades) {
            sum += activity.getPreco();
        }
        return sum;
    }
    
}
