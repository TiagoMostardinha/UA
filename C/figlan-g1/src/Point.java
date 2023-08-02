import java.awt.Graphics;

public class Point extends Geometrics {
    private Double x;
    private Double y;

    Point(Double xC, Double yC) {
        super();
        this.x = xC;
        this.y = yC;
    }

    public Double getX() {
        return this.x;
    }

    public Double getY() {
        return this.y;
    }

    @Override
    public String toString() {
        return "[" + this.x.toString() + ", " + this.y.toString() + "]";
    }

    @Override
    public void draw(Graphics g) {
        int x = 20*this.x.intValue() + 200;
        int y = 20*this.y.intValue() + 200;

        g.drawRect(x, y, 1, 1);
    }
}