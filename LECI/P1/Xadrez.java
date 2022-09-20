public class Xadrez {
	
	public static void main (String[] args) {
		char l='a';
		for (int i=8;i>0;i--){
			for (int j=1;j<=8;j++){
				l=(char)('a'+(j-1));
				System.out.print(l+""+i+" ");
			}
			System.out.println();
			l='a';
			
		}
		
	}
}

