import org.antlr.v4.runtime.ParserRuleContext;
import org.antlr.v4.runtime.tree.ErrorNode;
import org.antlr.v4.runtime.tree.TerminalNode;
import java.util.HashMap;
@SuppressWarnings("CheckReturnValue")

public class NDict extends NumbersBaseListener {
   private HashMap<String,Integer> description;

   void NDict(){
      description = new HashMap<String,Integer>();
   }

   @Override public void enterMapping(NumbersParser.MappingContext ctx) {
      description.put(ctx.WORD().getText(),Integer.parseInt(ctx.NUMBER().getText()));
   }

   public Integer mapping(String word){
      return description.get(word);
   }
}
