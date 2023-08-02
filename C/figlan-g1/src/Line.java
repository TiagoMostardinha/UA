import java.awt.Graphics;

public class Line extends Geometrics{
    private Point point1;
    private Point point2;

    Line(Point p1, Point p2){
        super();
        this.point1 = p1;
        this.point2 = p2;
    }

    @Override
    public String toString() {
        return "line(" + point1.toString() + "," + point2.toString()+")";
    }

    // getp1
    public Point getpoint1(){
        return this.point1;
    }
    //getp2
    public Point getpoint2(){
        return this.point2;
    }

    @Override
    public void draw(Graphics g) {
        int x1 = 20*this.point1.getX().intValue() + 200;
        int y1 = 20*this.point1.getY().intValue() + 200;
        int x2 = 20*this.point2.getX().intValue() + 200;
        int y2 = 20*this.point2.getY().intValue() + 200;

        g.drawLine(x1, y1, x2, y2);
    }
}
