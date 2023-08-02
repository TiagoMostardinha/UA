import java.awt.*;
import java.util.HashSet;

import javax.swing.*;

public class Gui extends JFrame {
    private int width, height;
    HashSet<Geometrics> geometricsSet = new HashSet<Geometrics>();
    HashSet<Geometrics> visibleSet = new HashSet<Geometrics>();

    public Gui(int w, int h) {
        super("FigLan");

        this.width = w;
        this.height = h;

        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setSize(this.width, this.height);
        setVisible(true);
    }

    public Gui showElem(Geometrics g) {
        if (!this.geometricsSet.contains(g) && !this.visibleSet.contains(g)) {
            this.visibleSet.add(g);
            this.geometricsSet.add(g);
        } else if (this.geometricsSet.contains(g) && !this.visibleSet.contains(g)) {
            this.visibleSet.add(g);
        } 
        repaint();
        return this;
    }

    public Gui hideElem(Geometrics g) {
        if (this.geometricsSet.contains(g) && this.visibleSet.contains(g)) {
            this.visibleSet.remove(g);
        }
        repaint();
        return this;
    }

    public Gui hideAll() {
        this.visibleSet.clear();
        repaint();
        return this;
    }

    public Gui showAll() {
        this.visibleSet.addAll(this.geometricsSet);
        repaint();
        return this;
    }

    public void paint(Graphics gh) {
        super.paint(gh);
        gh.drawLine(10, this.height / 2, this.width - 10, this.height / 2);
        gh.drawLine(this.width / 2, 10, this.height / 2, this.width - 10);
        for (Geometrics geo : this.visibleSet) {
            geo.draw(gh);
        }
    }

}
