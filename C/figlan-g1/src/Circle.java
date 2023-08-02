import java.awt.Graphics;

public class Circle extends Geometrics {

    private Point center;
    private Double radius;

    Circle(Point center, Double radius) {
        super();
        this.center = center;
        this.radius = radius;
    }

    public Point getCenter() {
        return this.center;
    }

    public Double getRadius() {
        return this.radius;
    }

    @Override
    public String toString() {
        return "circle(" + center.toString() + "," + radius.toString() + ")";
    }

    @Override
    public void draw(Graphics g) {
        int r = (int) Math.round(20 * this.radius);
        int x = (int) Math.round(20*center.getX() + 200 ) - r;
        int y = (int) Math.round(20*center.getY() + 200 ) - r;

        g.drawOval(x, y, r * 2, r * 2);
    }

}
