
public class Sport extends Activity{
    public static enum Modality {KAYAK, HIKING}
    private Modality modality;

    public Sport(Modality modality, int np) {
        super(np, 30);
        this.modality = modality;
    }

    public Modality getModality(){
        return this.modality;
    }

}


