import java.util.*;

public class Palindrome {
	public static final Scanner sc = new Scanner(System.in);

	public static void main(String[] args) {
		System.out.print("Frase para detetar: ");
		String s = sc.nextLine();
		
		Stack<Character> st = fillStack(s,1);
		Stack<Character> queue = fillStack(s,-1);
		
		//System.out.println("DEBUG: " + st);
		//System.out.println("DEBUG: " + queue);
		
		isPalindrome(st,queue);


	}
	
	public static Stack<Character> fillStack(String s,int a){
		Stack<Character> temp = new Stack<Character>();
		
		assert temp.isEmpty() : "Stack is not Empty";
		
		if(a>0) {
			for(int i = 0; i < s.length(); i++) {
				if (Character.isLetter(s.charAt(i)) || Character.isDigit(s.charAt(i))){
					temp.push(s.charAt(i));
				}
			}
		}
		else {
			for(int i = s.length()-1; i >= 0; i--) {
				if (Character.isLetter(s.charAt(i)) || Character.isDigit(s.charAt(i))){
					temp.push(s.charAt(i));
				}
			}
		}
		assert !temp.isEmpty() : "Stack is Empty";
		
		return temp;
	}
	
	public static void isPalindrome(Stack<Character> st,Stack<Character> q) {
		while(!st.isEmpty() && !q.isEmpty()) {
			Character a = Character.toLowerCase(st.pop());
			Character b = Character.toLowerCase(q.pop());
			
			//System.out.println("DEBUG a: "+a);
			//System.out.println("DEBUG b: "+b);
			
			assert a == b : "Nao é um palindrome";
		}
		System.out.print("É um palindrome");
	}

}
