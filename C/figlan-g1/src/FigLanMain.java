import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;

import org.stringtemplate.v4.*;
import java.io.*;

public class FigLanMain {
   public static void main(String[] args) {
      try {
         // create a CharStream that reads from standard input:
         CharStream input = CharStreams.fromStream(System.in);
         // create a lexer that feeds off of input CharStream:
         FigLanLexer lexer = new FigLanLexer(input);
         // create a buffer of tokens pulled from the lexer:
         CommonTokenStream tokens = new CommonTokenStream(lexer);
         // create a parser that feeds off the tokens buffer:
         FigLanParser parser = new FigLanParser(tokens);
         // replace error listener:
         //parser.removeErrorListeners(); // remove ConsoleErrorListener
         //parser.addErrorListener(new ErrorHandlingListener());
         // begin parsing at program rule:
         ParseTree tree = parser.program();
         if (parser.getNumberOfSyntaxErrors() == 0) {
            // print LISP-style tree:
            // System.out.println(tree.toStringTree(parser));
            Compiler compiler = new Compiler();
            ST res = compiler.visit(tree);
            
            res.add("name", "Output");

            System.out.println(res.render());

            PrintWriter pw = new PrintWriter(new File("Output.java"));
            pw.println(res.render());
            pw.close();

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
