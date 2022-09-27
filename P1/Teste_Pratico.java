import java.util.*;

public class Teste_Pratico{
	
	public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args){
    double [] a = ler();
    for (int i =0 ; i< a.length ; i++){
        System.out.printf("%.3f ", a[i]);
        }
        System.out.println();


    novoler(a);
    System.out.println();
    System.out.print(max(a));

    }

	// readArray
    public static double [] ler(){
    int size;
    do{
    System.out.print("tamanho do array: ");
    size = sc.nextInt();
    }while(size<=0);
    double [] a = new double[size];
    for (int i =0; i<a.length ; i++)
    {
            System.out.printf("notas %d: ",i+1);
            a[i] = sc.nextInt();

    }
    return a;
}


    public static void novoler(double[] a){
        double [] b = new double [a.length-1];//nova array -1 size q a
        for ( int i=0 ; i<b.length; i++){
            b[i] = a[i+1] -a[i]; //proximo num - anterior num
        }
        for (int i =0 ; i< b.length ; i++){
        System.out.printf("%f ",b[i]);
        }

    }



	//MAXIMO DE UM ARRAY
    public static double max(double[] a){
        double b=0;
        for (int i=0 ; i<a.length ;i++)
        {
            if (a[i] > b)
            { b=a[i];}
        }
        return b;
    }
}
