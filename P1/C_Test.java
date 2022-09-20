import java.util.*;

public class C_Test {
	
	public static void main (String[] args) {
		Class1 call_0 = new Class1();
		Class1 call_1 = new Class1();
		System.out.println(call_0.var);
		System.out.println(call_1.list);
		call_0.printHi();
		
		/////////////
		
		Class2 call_2 = new Class2();
		System.out.println(call_2.y);
	}
}
class Class1{
	int var = 2;
	char[] list = {'a','b','c'};
	
	void printHi(){ //Cria funcao
		System.out.println("Hi");
	}
}
class Class2{
	int y = 23;
}
