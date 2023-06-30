import java.util.HashMap;

@SuppressWarnings("CheckReturnValue")
public class Execute extends CalculatorBaseVisitor<Integer> {
   HashMap<String, Integer> varTable = new HashMap<String, Integer>();

   @Override
   public Integer visitStat(CalculatorParser.StatContext ctx) {
      Integer res = null;

      if (ctx.assignment() != null) {
         res = visit(ctx.assignment());
      }

      if (ctx.expr() != null) {
         res = visit(ctx.expr());
         System.out.printf("%d\n", res);
      }

      return res;
   }

   @Override
   public Integer visitAssignment(CalculatorParser.AssignmentContext ctx) {
      String key = ctx.ID().getText();
      Integer val = visit(ctx.expr());

      varTable.put(key, val);

      return val;
   }

   @Override
   public Integer visitExprAddSub(CalculatorParser.ExprAddSubContext ctx) {
      Integer res = null;

      String op = ctx.op.getText();
      Integer e1 = visit(ctx.expr(0));
      Integer e2 = visit(ctx.expr(1));

      switch (op) {
         case "+":
            res = e1 + e2;
            break;
         case "-":
            res = e1 + e2;
            break;
      }
      return res;
   }

   @Override
   public Integer visitExprParent(CalculatorParser.ExprParentContext ctx) {
      return visit(ctx.expr());
   }

   @Override
   public Integer visitExprUnary(CalculatorParser.ExprUnaryContext ctx) {
      Integer res = null;

      res = visit(ctx.expr());
      String op = ctx.op.getText();

      if (op.equals("-")) {
         res = -res;
      }

      return res;
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
   public Integer visitExprID(CalculatorParser.ExprIDContext ctx) {
      Integer res = varTable.get(ctx.ID().getText());
      return res;
   }

   @Override
   public Integer visitExprMultDivMod(CalculatorParser.ExprMultDivModContext ctx) {
      Integer res = null;

      String op = ctx.op.getText();
      Integer e1 = visit(ctx.expr(0));
      Integer e2 = visit(ctx.expr(1));

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
}
