package guiao01;
import java.util.HashMap;
import java.util.Scanner;
import java.io.FileInputStream;



public class ex15 {

    static HashMap<String,Integer> description;

    static void loadDescription(String filename){
        FileInputStream inputStream = null;
        Scanner input;

        try{
            inputStream = new FileInputStream(filename);
        } catch(Exception e){
            System.err.printf("Cannot open file %s: %s\n",filename,e);
            System.exit(1);
        }

        description = new HashMap<String,Integer>();
        input = new Scanner(inputStream);

        try{
            while(input.hasNext()){
                Integer number;
                String text;
    
                number = input.nextInt();
                input.next();
                text = input.next();
                description.put(text,number);
            }
        } catch(Exception e){
            System.err.printf("Wrong format of file %s: %s\n",filename,e);
            System.exit(2);
        }
        input.close();
    }

    public static void parseInput(){
        Scanner input = new Scanner(System.in);
        Integer sum = 0,current = 0;

        while(input.hasNext()){
            String word = input.next();
            Integer number = description.get(word);
            if (number == null){
                System.err.printf("Word not Found: %s\n",word);
                System.exit(3);
            } 

            if (number == 100 || number == 1000 || number == 1000000) {
                sum += current * number;
                current = 0;
            } else{
                current += number;
            }
        }
        sum += current;
        System.out.printf("%d",sum);
        input.close();
    }


    public static void main(String[] args) {
        if (args.length != 1){
            System.err.printf("Usage: %s filename\n",args[0]);
            return;
        }

        loadDescription(args[0]);
        parseInput();
    }
}
