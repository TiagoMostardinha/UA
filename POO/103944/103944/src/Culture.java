
public class Culture extends Activity{
    public static enum Option {
        ARCHITECTURAL_TOUR, RIVER_TOUR, ART_MUSEUM, WINE_TASTING}
        
    private Option option;

    public Culture(Option option, int np) {
        super(np, 22);
        this.option = option;
    }

    public Option getOption(){
        return this.option;
    }
}
