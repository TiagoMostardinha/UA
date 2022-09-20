

public class A_Teorica2 {
	
	public static void main (String[] args) {
		int[] a ={1,12,5,4};
		q(a);
		for (int i =0;i <a.length;i++)System.out.printf("%d",a[i]);
		
	}
	public static void q(int[] p){
		for (int i =0;i<p.length/2;i++){
			int tmp=p[i];
			p[i]=p[p.length-1-i];
			p[p.length-1-i]=tmp;
		}
	}
}

