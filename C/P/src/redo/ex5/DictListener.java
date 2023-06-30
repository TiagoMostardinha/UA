
import java.util.HashMap;
import org.antlr.v4.runtime.ParserRuleContext;
import org.antlr.v4.runtime.tree.ErrorNode;
import org.antlr.v4.runtime.tree.TerminalNode;

@SuppressWarnings("CheckReturnValue")

public class DictListener extends DictionaryBaseListener {
      public HashMap<String, Integer> nDict = new HashMap<String, Integer>();

      public HashMap<String, Integer> getMap() {
            return nDict;
      }

      @Override
      public void exitText(DictionaryParser.TextContext ctx) {

      }

      @Override
      public void exitLine(DictionaryParser.LineContext ctx) {
            String w = ctx.WORD().getText();
            Integer i = Integer.parseInt(ctx.INT().getText());

            if (w != null && i != null) {
                  nDict.put(w, i);
            }
      }

      @Override
      public void enterEveryRule(ParserRuleContext ctx) {
      }

      @Override
      public void exitEveryRule(ParserRuleContext ctx) {
      }

      @Override
      public void visitTerminal(TerminalNode node) {
      }

      @Override
      public void visitErrorNode(ErrorNode node) {
      }
}
