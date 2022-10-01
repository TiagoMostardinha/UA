/**
 * Uma estrutura de dados baseada numa fila, mas em que só ficam
 * armazenados os últimos N números inseridos.
 * Quando a fila está preenchida (N elementos) a inserção de um novo número
 * implica a saída do primeiro (que deixa de existir).
 */

public class LeakyQueue
{
	public void in(Double num) {
		if(elem < size) {
			lis[elem] = num; 
			elem++;
		}
		else {
			System.arraycopy(lis, 1, lis, 0, size - 1);
			lis[size-1] = num;
		}
	}
	public void out() {
		lis[0] = null;
		System.arraycopy(lis, 1, lis, 0, size - 1);
		lis[size -1] = null;
		elem--;
	}
	
	public void print() {
		String s = "";
		for(int i = 0; i < size; i++) {
			if(lis[i] != null) s = s + String.format("%4.1f ",lis[i]);
		}
		System.out.printf("%s", s);
	}
	
	public double minimum() {
		double n = lis[0];
		for(int i = 0; i < size && lis[i] != null; i++) {
			if(n > lis[i]) n = lis[i];
		}
		return n;
	}
	
	
	public boolean isEmpty() {return elem == 0;}
	
	public int size() {return size;}
	
	public LeakyQueue(int size) {
		this.size = size;
		lis = new Double[size];
	}
	
	private int elem = 0;
	private int size;
	private Double[] lis;
}

