import java.awt.Graphics;
import java.util.HashSet;

public class Figure extends Geometrics {
    private HashSet<Geometrics> figureSet = new HashSet<Geometrics>();

    Figure() {
        super();
    }

    public HashSet<Geometrics> getFigureSet() {
        return this.figureSet;
    }

    public Figure addElem(Geometrics g) {
        this.figureSet.add(g);
        return this;
    }

    @Override
    public String toString() {
        String s = "";

        int i = 0;
        for (Geometrics g : figureSet) {
            if (i == figureSet.size() - 1) {
                s += g.toString();
            } else {
                s += g.toString() + ",";
            }
            i++;
        }
        return String.format("figure(%s)", s);
    }

    @Override
    public void draw(Graphics g) {
        for (Geometrics geo : this.figureSet) {
            geo.draw(g);
        }
    }

}