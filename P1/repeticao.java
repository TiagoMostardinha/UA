import java.util.*;
public class repeticao {
	public static void main (String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int[] funcao={1,5,6,3,6,8,3,10};
		int[] posMax = new int[funcao.length];
		System.out.printf("Introduza %d numeros inteiros :%n",funcao.length);
		
		//1 ler Array
		for (int i = 0; i < funcao.length; i++){ //ler valores funcao
			funcao[i]=sc.nextInt();
		}
		//1
		
		
		int imax = 0;
		//2 maximo do funcao[]
		for (int i = 0; i < funcao.length; i++){ // calculo do maximo
			if (imax < funcao[i]){
				imax = funcao[i]; 
			}
		}
		//2
		
		
	////////////////
		int [] deriv = derivada(funcao);
		printArray(deriv,deriv.length,"derivada:");
		int numMaximos = maximos (deriv,posMax);
		printArray(posMax,numMaximos,"posicoes dos maximos: ");
		for (int i = 0; i < numMaximos; i++){
			System.out.printf("Maximo %d = %d%n",i+1,funcao[posMax[i]]);
		}
	 }	
	public static void printArray(int[] arr , int num , String mensagem){		
		System.out.print(mensagem);
		if (num > arr.length)  num = arr.length;
		String linha = "[";
		for (int k = 0; k < num ; k++){
			linha = linha + arr[k] + " ";
		}
		System.out.printf(linha+"]%n");
	}
	////////////////
	
	
	
	public static int [] derivada (int [] arr){ 		//cria arr atraves do A_funcao ([i+1]-[i]) ; tendo funcao.length-1 
	int [] d = new int [0];	
	//3
		int [] s = new int [arr.length-1/*7*/];
		for(int i =0; i < s.length /*arr.length-1*/;i++){
			s[i] = arr[i+1] - arr[i];
		}
		d = s;
	//3
		return d;
	}
	
	
	
	
	public static int maximos(int [] arr, int [] posZeros){       
	int nzeros = 0;											/*analisa o arr[] e regista no posZeros[] 
																	quando há uma troca de sinal + para - */
	//4
		for(int i = 0; i < arr.length-1 ; i++){
			if(arr[i] > 0 && arr[i+1] < 0){
				posZeros[nzeros] = (i+1);
				nzeros++;
			}
		}
	//4
	return nzeros;
	}
	
}
