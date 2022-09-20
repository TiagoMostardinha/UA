import java.util.*;

public class AS_Distancia {
    public static final Scanner sc = new Scanner(System.in);
    
    public static void main(String[] args) {
        // declare array
        Ponto2D[] pontos = new Ponto2D[50];

        // read and recize array
        int i = 0;
        for(i=0; i<pontos.length ;i++){
            System.out.print("Introduza um ponto:\n");
            pontos[i] = readPonto2D();

            if( pontos[i].x==0 && pontos[i].y==0 ) { break; };
        }
        pontos = recizeArray(pontos, i+1);
    
        // calculate sum and most distant point
        double sum = 0;
        Ponto2D mostDistPoint = new Ponto2D(0,0);
        double maxDist = 0;
        
        for(int j=0; j<pontos.length-1 ;j++) {
            double dist = dist2D(pontos[j], new Ponto2D(0,0));
            pontos[j].d = dist;
            System.out.printf("%npontos[%d]: %4.2f%n",j,pontos[j].d);
            sum += dist;
            
            if( dist>maxDist ){
                maxDist = dist;
                mostDistPoint = pontos[j];
            }
        }

        // print the requested data
        System.out.printf("A soma das distancias dos %d pontos a origem e %.1f\n", pontos.length-1, sum);
        System.out.printf("O ponto mais afastado da origem foi: ");
        printPonto2D(mostDistPoint);
        System.out.print("\n");
        
        
        pontos = sort(pontos);
        printFinal(pontos);
    }

    public static Ponto2D readPonto2D() {
        System.out.print("Coordenada x: ");
        double x = sc.nextDouble();
        System.out.print("Coordenada y: ");
        double y = sc.nextDouble();
        Ponto2D p = new Ponto2D(x,y);
        return p; 
    }

    public static void printPonto2D(Ponto2D p) {
        System.out.printf("(%3.1f, %3.1f)", p.x, p.y);
    }

    public static double dist2D(Ponto2D a, Ponto2D b) {
        return Math.sqrt(Math.pow(b.x-a.x,2)+Math.pow(b.y-a.y,2));
    }

    public static Ponto2D[] recizeArray(Ponto2D[] original, int length) {
        Ponto2D[] array = new Ponto2D[length];
        System.arraycopy(original, 0, array, 0, length);
        return array;
    }
    
    public static Ponto2D[] sort(Ponto2D[] in){
		int i = 0;
		Ponto2D sub = in[i];
		
		for (i = 0; i < in.length-1; i++){
			if(in[i].d > in[i+1].d){
				sub = in[i];
				in[i] = in[i+1];
				in[i+1] = sub;	
			}
			
		}
		return in;
	}
	
	public static void printFinal(Ponto2D[] a){
		for (int i = 0; i < a.length; i++){
			if(a[i].x == 0 && a[i].y == 0){}
			else{printPonto2D(a[i]);}
		}
		
	}
}

class Ponto2D {
    double x = 0;
    double y = 0;
    double d = 0;

    Ponto2D(double _x, double _y) {
        x = _x;
        y = _y;
    }
}
