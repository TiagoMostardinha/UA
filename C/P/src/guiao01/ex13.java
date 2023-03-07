package guiao01;
import java.util.Scanner;
import java.util.Stack;

public class ex13 {
    
    static Scanner input;
    static Stack<Double> stack;

    static void calculator(){
        double value,a,b;
        String op;

        stack = new Stack<Double>();
        input = new Scanner(System.in);

        for(;;){
            if (input.hasNextDouble()){         // if value
                value = input.nextDouble();
                stack.push(value);
            } else if(input.hasNext()){         // if operator
                op = input.next();
                
                if (op.length() == 1){          // length of operator == 1 ?
                    switch(op){
                        case "+":
                            a = stack.pop();
                            b = stack.pop();
                            value = a + b;
                            break;
                        case "-":
                            a = stack.pop();
                            b = stack.pop();
                            value = a - b;
                            break;
                        case "*":
                            a = stack.pop();
                            b = stack.pop();
                            value = a * b;
                            break;
                        case "/":
                            a = stack.pop();
                            b = stack.pop();
                            value = a / b;
                            break;
                        default:
                            System.err.printf("Invalid token: %s\n", op);
                            continue;
                    }
                    stack.push(value);
                    System.out.printf("%f\nCurrent Stack: %s\n",value,stack.toString());

                } else {
                    System.err.printf("Invalid token: %s\n", op);
                }
            } else{
                return;
            }
        }
    }

    public static void main(String[] args) {
        //input = new Scanner(System.in);

        calculator();
    }
}
