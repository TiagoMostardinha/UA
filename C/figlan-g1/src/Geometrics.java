import java.awt.Graphics;

public abstract class Geometrics {

    @Override
    public abstract String toString();

    public abstract void draw(Graphics g);

    public String getClassName() {
        return this.getClass().getCanonicalName();
    }

}