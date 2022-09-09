import java.util.*;

public class C_Complexo {
	public static final Scanner sc = new Scanner(System.in);
	
	public static void main (String[] args) {
		Complexo num1 = new Complexo();
		Complexo num2 = new Complexo();
		Complexo F_num = new Complexo();
		
		char op;
		
		do{
			System.out.print("Operacao:");
			op = ' '; //?????
			op = sc.nextLine().charAt(0);
			if( op == '+' || op == '-' || op == '*' || op == '/' || op == '='){
				if(op == '='){
					return;
				}
				num1=read();
				num2=read();
		
				F_num = doOp(num1,num2,op);
				printComplex(num1,num2,F_num,op);
			}
			else{
				System.out.println("Operacao nao permitida");
			}
		}while(op != '=');
	}
	
	public static Complexo read(){
		Complexo num = new Complexo();
		
		System.out.println("Introduza um numero complexo");
		System.out.print("Parte real:");
		num.r = sc.nextInt();
		System.out.printf("Parte imag:");
		num.i = sc.nextInt();
		return num;
	}
	
	public static Complexo doOp(Complexo num1, Complexo num2,char op){
		Complexo numf = new Complexo();
		
		if (op == '+'){
			numf.r = num1.r + num2.r;
			numf.i = num1.i + num2.i;
		}
		if (op=='-'){
			numf.r = num1.r - num2.r;
			numf.i = num1.i - num2.i;
		}
		if (op=='*'){
			numf.r = (num1.r * num2.r) - (num1.i * num2.i);
			numf.i = (num1.i * num2.r) + (num1.r * num2.i);
		}
		if (op=='/'){
			numf.r = (num1.r*num2.r-num1.i*num2.i)/(Math.pow(num2.r,2)+Math.pow(num2.i,2)); 
			numf.i = (num1.i*num2.r+num1.r*num2.i)/(Math.pow(num2.r,2)+Math.pow(num2.i,2));
		}
		return numf;
	}
	
	public static void printComplex(Complexo num1,Complexo num2, Complexo numf,char op){
		System.out.printf("(%4.2f + %4.2fi) "+op+" (%4.2f +%4.2fi) = (%4.2f + %4.2fi)",num1.r,num1.i,num2.r,num2.i,numf.r,numf.i) ;	
	}
}

class Complexo{
	double r;
	double i;
}
