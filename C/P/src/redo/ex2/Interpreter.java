import org.antlr.v4.runtime.tree.*;

@SuppressWarnings("CheckReturnValue")
public class Interpreter extends SuffixCalculatorBaseVisitor<Double> {

   @Override
   public Double visitStat(SuffixCalculatorParser.StatContext ctx) {
      Double res = null;
      if (ctx.expr() != null) {
         res = visit(ctx.expr());
         System.out.printf("%4.1f\n", res);
      }
      return res;
   }

   @Override
   public Double visitExprNumber(SuffixCalculatorParser.ExprNumberContext ctx) {
      Double res = null;
      res = Double.parseDouble(ctx.NUM().getText());
      return res;
   }

   @Override
   public Double visitExprSuffix(SuffixCalculatorParser.ExprSuffixContext ctx) {
      Double res = null;
      Double e1, e2;
      String op;

      e1 = visit(ctx.expr(0));
      e2 = visit(ctx.expr(1));
      op = ctx.op.getText();

      switch (op) {
         case "+":
            res = e1 + e2;
            break;
         case "-":
            res = e1 - e2;
            break;
         case "*":
            res = e1 * e2;
            break;
         case "/":
            res = e1 / e2;
            break;
      }

      return res;
   }
}
