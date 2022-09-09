package aula03.ex34;
import java.util.*;

public class maxNum {
    private static Scanner sc = new Scanner(System.in);
    private static stats a = new stats();
    public static void main(String[] args) throws Exception {
        double[] nR = new double[100];
        a.nRead = 0;
        nR = fillArray(nR);
        mMAnR(nR);

        System.out.printf("Max: %.2f, Min: %.2f, nRead: %d, Average: %.2f",a.max,a.min,a.nRead,a.average);
    }
    public static double[] fillArray(double[] temp){
        int i = 0;
        System.out.printf("Array[%d]: ",i);
        temp[0] = sc.nextDouble();

        do{ 
            i++;
            a.nRead++;
            System.out.printf("Array[%d]: ",i);
            temp[i] = sc.nextDouble();
        }while(temp[0]!=temp[i]);

        return temp;
    }

    public static void mMAnR(double[] temp) {
        a.max = temp[0];
        a.min = temp[0];

        double sum = 0;

        for (int i = 0; i < a.nRead; i++) {
            if(temp[i] > a.max) a.max = temp[i];
            if(temp[i] < a.min) a.min = temp[i];
            sum += temp[i];
        }
        a.average = sum / a.nRead;
    }
}

class stats{
    double max,min,average;
    int nRead;
}
