@SuppressWarnings("CheckReturnValue")
public class Interpreter extends PrefixCalculatorBaseVisitor<Double> {

   @Override
   public Double visitStat(PrefixCalculatorParser.StatContext ctx) {
      Double res = null;
      if (ctx.expr() != null) {
         res = visit(ctx.expr());
         System.out.printf("%4.2f\n", res);
      }
      return res;
   }

   @Override
   public Double visitExprPrefix(PrefixCalculatorParser.ExprPrefixContext ctx) {
      Double res = null;
      Double e1, e2;
      String op;

      op = ctx.op.getText();
      e1 = visit(ctx.expr(0));
      e2 = visit(ctx.expr(1));

      switch (op) {
         case "*":
            res = e1 * e2;
            break;
         case "/":
            res = e1 / e2;
            break;
         case "+":
            res = e1 + e2;
            break;
         case "-":
            res = e1 - e2;
            break;
      }
      return res;
   }

   @Override
   public Double visitExprNum(PrefixCalculatorParser.ExprNumContext ctx) {
      Double res = null;
      if (ctx.NUM() != null) {
         res = Double.parseDouble(ctx.NUM().getText());
      }
      return res;
   }
}
