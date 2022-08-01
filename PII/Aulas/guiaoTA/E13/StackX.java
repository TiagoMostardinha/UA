/**
 * Uma estrutura de dados de tipo pilha, mas com os métodos alternativos:
 * - popN(n): retira os n elementos de topo da pilha
 * - topMatches(seqChars): verifica se os últimos caracteres na pilha
 *                         coincidem com seqChars
 * - toString(): devolve uma String com todos os caracteres contidos
 *               na pilha (desde o mais antigo até ao mais recente)
 */

public class StackX
{
	private String lis = "";
	
	public void push(char c) {
		lis += c;
	}
	public boolean topMatches(String pat) {
		System.out.print(pat);
		String temp = lis.substring(0,pat.length());
		return temp.equals(pat);
	}
	
	public void popN(int n) {
		lis = lis.substring(n-1);
	}
	
	public int size() {
		return lis.length();
	}
	public char top() {
		return lis.charAt(lis.length()-1);
	}

}

