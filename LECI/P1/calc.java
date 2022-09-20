import java.util.*;

public class calc {
	
	public static void main (String[] args) {
		double a = 0;
		for(int n = 0; n < 10; n++){
			a = (Math.pow(-1,n+1)/n)*Math.pow(2,n);
			System.out.printf("( %d , %4.2f )%n",n,a);
		}
	}
}

