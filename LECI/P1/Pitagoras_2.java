public class Pitagoras_2 {
	
	public static void main (String[] args) {
		//variables
		int a,b;
		double c=1;
		//condicao
		for (a=1;a<100;a++){
			for(b=1;b<100;b++){
				c=Math.sqrt(Math.pow(a,2)+Math.pow(b,2));
				if(a<b && c == (int)c){
					System.out.printf("(%3d,%3d,%3.0f)",a,b,c);
					System.out.println();
				}
			}
		}
		
	}
}

