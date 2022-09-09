
public class Catering extends Activity{
    public static enum Option {FULL_MENU, DRINKS_AND_SNACKS, LIGHT_BITES}
    private Option option;

    public Catering(Option option, int np) {
        super(np, 25);
        this.option = option;
    }

    public Option getOption(){
        return this.option;
    }
}
