package aula03.ex38;

public class matrixGrade {
    private static double[][] notasF = new double[16][3];
    public static void main(String[] args) {
        fill();
        calcFinal();
        printMatrix();
    }
    
    public static void fill(){
        for (int i = 0; i < notasF.length; i++) {
            notasF[i][0] = Math.random() * 20;
            notasF[i][1] = Math.random() * 20;
        }
    }

    public static void calcFinal() {
        for (int i = 0; i < notasF.length; i++) {
            notasF[i][2] = notasF[i][0] * 0.4 + notasF[i][1] * 0.6;
        }   
    }

    public static void printMatrix() {
        System.out.println("NotaT  NotaP  Pauta");

        for (int i = 0; i < notasF.length; i++) {
            System.out.printf("%.1f    %.1f     %.1f\n",notasF[i][0],notasF[i][1],notasF[i][2]);
        }
    }
    
}
