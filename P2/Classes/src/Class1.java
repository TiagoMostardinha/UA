
public class Class1 {
	static int a = 0;
	static int b = 0;
	static int s = call();
	
	Class1(int a1,int b1){
		a = a1;
		b = b1;
	}
	
	private static int sum(int a_,int b_) {
		return a_ + b_;
	}
	
	static int call() {
		return sum(a,b);
	}
}
