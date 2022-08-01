package aula05.ex3;
import java.util.Scanner;

public class testFGeo {
    public static void main(String[] args) {
        Triangulo[] tri = new Triangulo[10];
        Retangulo[] ret = new Retangulo[10];
        Circulo[] cir = new Circulo[10];
        tri = genT(tri);
        ret = genR(ret);
        cir = genC(cir);

        /* Demonstrar equals
            tri[0].setL1(3);
            tri[1].setL1(3);
            tri[0].setL2(3);
            tri[1].setL2(3);
            tri[0].setL3(3);
            tri[1].setL3(3);
        */

        printTab(tri, cir, ret);
    }


    //valid
    public static double valid(double l){
        Scanner sc =  new Scanner(System.in);
        do{
            if(l > 0) break;
            System.out.println("Invalido: ");
            l = sc.nextDouble();
        }while(true);
        sc.close();
        return l;
    }

    //generators
    public static Triangulo[] genT(Triangulo[] t) {
        for (int i = 0; i < t.length; i++) {
            t[i] = new Triangulo(Math.random() * 10, Math.random() * 10,Math.random() * 10);
        }
        return t;
    }
    public static Retangulo[] genR(Retangulo[] r) {
        for (int i = 0; i < r.length; i++) {
            r[i] = new Retangulo(Math.random() * 10, Math.random() * 10);
        }
        return r;
    }
    public static Circulo[] genC(Circulo[] c) {
        for (int i = 0; i < c.length; i++) {
            c[i] = new Circulo(Math.random() * 10);
        }
        return c;
    }
    
    //equals...
    public static int equalsT(Triangulo[] t) {
        int cont = 0;
        for (int i = 0; i < t.length; i++) {
            for (int j = i+1; j < t.length; j++) {
                if(t[i].equals(t[j])) cont++;
            }
        }
        return cont;
    }
    public static int equalsR(Retangulo[] r) {
        int cont = 0;
        for (int i = 0; i < r.length; i++) {
            for (int j = i+1; j < r.length; j++) {
                if(r[i].equals(r[j])) cont++;
            }
        }
        return cont;
    }
    public static int equalsC(Circulo[] c) {
        int cont = 0;
        for (int i = 0; i < c.length; i++) {
            for (int j = i+1; j < c.length; j++) {
                if(c[i].equals(c[j])) cont++;
            }
        }
        return cont;
    }

    public static void printTab(Triangulo[] t,Circulo[] c, Retangulo[] r) {
        System.out.printf("Triangulo:\nLado1 Lado2 Lado3\n");
        for (int i = 0; i < t.length; i++) {
            System.out.printf("%s area: %.2f perimetro %.2f\n",t[i].toString(),t[i].area(),t[i].perimeter());
        }
        System.out.println("equalsT: " + equalsT(t));

        System.out.printf("Circulo:\nRaio\n");
        for (int i = 0; i < c.length; i++) {
            System.out.printf("%s area: %.2f perimetro %.2f\n",c[i].toString(),c[i].area(),c[i].perimeter());
        }
        System.out.println("equalsC: " + equalsC(c));

        System.out.printf("Retangulo:\nComprimento Altura\n");
        for (int i = 0; i < r.length; i++) {
            System.out.printf("%s area: %.2f perimetro %.2f\n",r[i].toString(),r[i].area(),r[i].perimeter());
        }
        System.out.println("equalsR: " + equalsR(r));
        
    }

}
