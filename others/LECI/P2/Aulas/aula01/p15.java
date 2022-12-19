import java.util.*;

public class p15 {
	public static final Scanner sc = new Scanner(System.in);
	
	public static void main (String[] args) {
		double[] l = readl();
		average(l);
	}
	
	public static double[] readl(){
		double[] arr = new double[0];
		
		do{
			System.out.print("n: ");
			double n = sc.nextDouble();
			if(n==0){return arr;}
			
			arr = Arrays.copyOf(arr, arr.length + 1);
			arr[arr.length - 1] = n; 
		}while(true);
	}
	
	public static void average(double[] num){
		double m = 0;
		for (int i = 0; i < num.length; i++){
			m+=num[i];
		}
		m = m/num.length;
		System.out.printf("Media do Array e: %4.2f",m);
	}
}

