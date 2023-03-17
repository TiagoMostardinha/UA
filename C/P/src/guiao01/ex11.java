package guiao01;

import java.io.IOException;

class ex11{
    static String readString(){
        String result = new String();
        int input;
        byte[] chars = new byte[1];

        try {
            for(;;){
                input = System.in.read();
                if (input == -1){
                    return result;
                }
                chars[0] = (byte) input;

                if (Character.isWhitespace(chars[0])){
                    if(result.length() == 0){
                        continue;
                    }else{
                        return result;
                    }
                }
                result += new String(chars,"UTF-8");  
            }
        } catch(Exception e) {
            return result;
        }       
    }

    static Double operand() throws IOException{
    	String value;
    	Double result;
    	
        for (;;){
            value = readString();
            
            if (value.length() == 0) {
                System.exit(0);
            }
            
            try{
                result = Double.valueOf(value);
            } catch(Exception e) {
                System.err.printf("value %s is not valid for a real number\n",value);
                continue;
            }
            return result;
        }
    }
    
    static String operation() throws IOException{
        String value;
        
        
        for(;;){
            value = readString();
            if (value.length() == 0) {
                System.exit(0);
            }

            if (value.length() != 1){
                System.err.printf("value %s is not valid for an operator\n",value);
                continue;
            }

            if (value.charAt(0) == '+' || 
                value.charAt(0) == '-' || 
                value.charAt(0) == '*' || 
                value.charAt(0) == '/' ){
                return value;
            }

            System.err.printf("value %s is not valid for an operator\n",value);
        }

    }

    static void calculator() throws IOException{
        Double operand1,operand2,result;
        String operation;

        operand1 = operand();
        operation = operation();
        operand2 = operand();

        if (operation.charAt(0) == '+') {
            result = operand1 + operand2;
        }
        else if(operation.charAt(0) == '-') {
            result = operand1 - operand2;
        }
        else if(operation.charAt(0) == '*') {
            result = operand1 * operand2;
        }
        else{
            result = operand1 / operand2;
        }
        
        System.out.printf("%f\n",result);
    }

    public static void main(String args[]) throws IOException{
        for(;;){
            calculator();
        }
    }
}
