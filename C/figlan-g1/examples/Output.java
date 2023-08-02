import java.util.*;
import java.awt.*;
import javax.swing.*;
public class Output {
    public static void main(String[] args) {
        Gui gui = new Gui(400,400);
        Point p ;
        Line l1, l2 ;
        Circle c1, c2 ;
        Integer v0  = 0;
        Integer v1  = 0;
        Point v2  = new Point(Double.valueOf(v0),Double.valueOf(v1));
        p = v2;
        Integer v3  = 3;
        Integer v4  = 4;
        Point v5  = new Point(Double.valueOf(v3),Double.valueOf(v4));
        Line v6  = new Line(p,v5);
        l1 = v6;
        Integer v7  = 2;
        Integer v8  = 2;
        Point v9  = new Point(Double.valueOf(v7),Double.valueOf(v8));
        p = v9;
        Double v10  = 1.5;
        Circle v11  = new Circle(p,Double.valueOf(v10));
        c1 = v11;
        Integer v12  = 1;
        Integer v13  = 1;
        Point v14  = new Point(Double.valueOf(v12),Double.valueOf(v13));
        Integer v15  = 4;
        Integer v16  = 4;
        Point v17  = new Point(Double.valueOf(v15),Double.valueOf(v16));
        Line v18  = new Line(v14,v17);
        l2 = v18;
        Integer v19  = 5;
        Integer v20  = 5;
        Point v21  = new Point(Double.valueOf(v19),Double.valueOf(v20));
        Integer v22  = 3;
        Circle v23  = new Circle(v21,Double.valueOf(v22));
        c2 = v23;
        String v24  = "A circle: ";
        System.out.println(v24+" "+c1);
        gui.showElem(c1);
        gui.showElem(p).showElem(l1).showElem(l2).showElem(c1).showElem(c2);
        Integer v25  = 1000;
        try {
            Thread.sleep(v25);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        gui.hideElem(c1);
        Integer v26  = 1000;
        try {
            Thread.sleep(v26);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        gui.hideAll();

   }
}
