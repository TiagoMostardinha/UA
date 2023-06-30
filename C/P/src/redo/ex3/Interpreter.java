@SuppressWarnings("CheckReturnValue")
public class Interpreter extends CalculatorBaseVisitor<Integer> {

   @Override
   public Integer visitStat(CalculatorParser.StatContext ctx) {
      Integer res = null;
      if (ctx.expr() != null) {
         res = visit(ctx.expr());
         System.out.printf("%d\n", res);
      }

      return res;
   }

   @Override
   public Integer visitExprAddSub(CalculatorParser.ExprAddSubContext ctx) {
      Integer res = null;
      Integer e1, e2;
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
      }

      return res;
   }

   @Override
   public Integer visitExprParent(CalculatorParser.ExprParentContext ctx) {
      return visit(ctx.expr());
   }

   @Override
   public Integer visitExprInteger(CalculatorParser.ExprIntegerContext ctx) {
      Integer res = null;
      if (ctx.INT() != null) {
         res = Integer.parseInt(ctx.INT().getText());
      }

      return res;
   }

   @Override
   public Integer visitExprMultDivMod(CalculatorParser.ExprMultDivModContext ctx) {
      Integer res = null;
      Integer e1, e2;
      String op;

      e1 = visit(ctx.expr(0));
      e2 = visit(ctx.expr(1));
      op = ctx.op.getText();

      switch (op) {
         case "*":
            res = e1 * e2;
            break;
         case "/":
            res = e1 / e2;
            break;
         case "%":
            res = e1 % e2;
            break;
      }

      return res;
   }

   @Override
   public Integer visitExprUnary(CalculatorParser.ExprUnaryContext ctx) {
      Integer res = null;
      String op;

      res = visit(ctx.expr());
      op = ctx.op.getText();

      if(op.equals("-")){
         res = -res;
      }

      return res;
   }
}
