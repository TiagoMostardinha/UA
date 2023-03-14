package guiao01;

import java.io.IOException;
import java.util.Scanner;
import java.util.Map;

class ex12{
    private static Scanner input;

    static Double expression(String[] tokens, int index){
        if ((tokens.length - index) == 1){
            return operand(tokens[index]);
        } else if((tokens.length - index) == 3){
            Double operand1,operand2;
            String operation;

            operand1 = operand(tokens[index]);
            operation = operand(tokens[index +1]);
            operand2 = operand(tokens[index + 2]);
        } else {
            return 0.0;
        }
    }

    static void calculator(){
        String line,tokens[];
        Double value;
        for(;;){
            line = input.nextLine();
            tokens = line.split(" +");
            if (Character.isLetter(tokens[0].charAt(0))){
                if (tokens[1].equals("=")) {
                    
                }
            } else {
                value = expression(tokens, 0);
                System.out.printf("%f\n",value);
            }
        }
        
    }

    public static void main(String[] args) {
        input = new Scanner(System.in);
        for(;;){
            calculator();
        }
    }
}