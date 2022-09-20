public class Teste {
	
	public static void main (String[] args) 
	{	
		//variables
		double g,c;
		
		//condicao
		for (int i=0; i<5;i++)
		{
			g=Math.random();
			System.out.println(g);
			
			if (g<0.50){
				c=1;
				}
			else{
				c=0;
			}
			
			System.out.println(c);
		}
	}
}

