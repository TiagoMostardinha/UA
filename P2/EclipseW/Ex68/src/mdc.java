public class mdc {

	public static void main(String[] args) {
		assert args.length > 0 : "Must run like java -ea <a> <b>";
		int a = Integer.parseInt(args[0]);
		int b = Integer.parseInt(args[1]);
		System.out.printf("MDC( %d, %d) = %d\n", a, b, mdcFinder(a,b));
	}
	
	public static int mdcFinder(int a, int b) {
		if (b == 0) return a;
		return mdcFinder(b,a % b);
		
	}

}
