import java.util.*;

public class Calculadora {
	public static final Scanner sc = new Scanner(System.in);
	
	public static void main (String[] args) {
		operacao conta = op_valid();
		do_op(conta);
	}
	
	public static operacao op_valid(){
		while(true){
			operacao c = new operacao();
			System.out.println("num1: ");
			c.n1 = sc.nextDouble();
			System.out.println("op: ");
			String op = sc.next();
			System.out.println("num2: ");
			c.n2 = sc.nextDouble();
			if(op.equals("+") || op.equals("-") || op.equals("*") || op.equals("/")){
				c.o = op;
				return c;
			}
			System.err.printf("%nDo 0 e bem feito.%n%n");
		}
	}
	public static void do_op(operacao newc){
		if(newc.o.equals("+")){System.out.printf("%4.2f", newc.n1 + newc.n2);} 
		if(newc.o.equals("-")){System.out.printf("%4.2f", newc.n1 - newc.n2);} 
		if(newc.o.equals("*")){System.out.printf("%4.2f", newc.n1 * newc.n2);} 
		if(newc.o.equals("/")){System.out.printf("%4.2f", newc.n1 / newc.n2);} 
	}
}

class operacao{
	double n1;
	String o;
	double n2;
}

