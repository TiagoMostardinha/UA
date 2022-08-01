
public class TestData {

	public static void main(String[] args) {
		Data a = new Data(1,1,1);
		Data b = new Data(12,12,12);
		
		if(a.compareTo(b) > 0) {
			System.out.println("a > b");
			System.out.printf("%d",a.compareTo(b));
		}
		
		if(a.compareTo(b) < 0) {
			System.out.println("a < b");
			System.out.printf("%d",a.compareTo(b));
		}
		
	}

}
