import java.io.IOException;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;
import java.util.*;
import org.stringtemplate.v4.*;
import java.io.FileWriter;
import java.io.IOException;

public class TabLanMain {
   public static void main(String[] args) {
      try {
         // create a CharStream that reads from standard input:
         CharStream input = CharStreams.fromStream(System.in);
         // create a lexer that feeds off of input CharStream:
         TabLanLexer lexer = new TabLanLexer(input);
         // create a buffer of tokens pulled from the lexer:
         CommonTokenStream tokens = new CommonTokenStream(lexer);
         // create a parser that feeds off the tokens buffer:
         TabLanParser parser = new TabLanParser(tokens);
         // replace error listener:
         //parser.removeErrorListeners(); // remove ConsoleErrorListener
         //parser.addErrorListener(new ErrorHandlingListener());
         // begin parsing at program rule:
         ParseTree tree = parser.program();
         if (parser.getNumberOfSyntaxErrors() == 0) {
            // print LISP-style tree:
            // System.out.println(tree.toStringTree(parser));
            TabCompiler compiler = new TabCompiler();
            ST res = compiler.visit(tree);
            res.add("name", "Output");
            String output = res.render();
            System.out.println(output);

            
            
             try {
                FileWriter fileWriter = new FileWriter("Output.java");
                fileWriter.write(output);
                fileWriter.close();
                System.out.println("File created successfully.");
               } catch (IOException e) {
                  System.out.println("An error occurred while creating the file.");
                  e.printStackTrace();
               }
               
         }
      }
      catch(IOException e) {
         e.printStackTrace();
         System.exit(1);
      }
      catch(RecognitionException e) {
         e.printStackTrace();
         System.exit(1);
      }
   }
}
