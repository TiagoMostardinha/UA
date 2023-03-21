@SuppressWarnings("CheckReturnValue")
public class Interpreter extends CalculatorBaseVisitor<Integer> {

   @Override public Integer visitProgram(CalculatorParser.ProgramContext ctx) {
      return visitChildren(ctx);
   }

   @Override public Integer visitStat(CalculatorParser.StatContext ctx) {
      if (ctx.expr() != null) {
         System.out.println(visit(ctx.expr()));
      }
      return null;
   }

   @Override public Integer visitExprAddSub(CalculatorParser.ExprAddSubContext ctx) {
      Integer res = null;
      Integer e1,e2;

      e1 = visit(ctx.expr(0));
      e2 = visit(ctx.expr(1));

      switch (ctx.op.getText()){
         case "+": return e1+e2;
         case "-": return e1-e2;
      }

      return null;
   }

   @Override public Integer visitExprParent(CalculatorParser.ExprParentContext ctx) {
      return visit(ctx.expr());
   }

   @Override public Integer visitExprInteger(CalculatorParser.ExprIntegerContext ctx) {
      return Integer.parseInt(ctx.getText());
   }

   @Override public Integer visitExprMultDivMod(CalculatorParser.ExprMultDivModContext ctx) {
      Integer res = null;
      Integer e1,e2;

      e1 = visit(ctx.expr(0));
      e2 = visit(ctx.expr(1));

      switch (ctx.op.getText()){
         case "*": return e1*e2;
         case "/": return e1/e2;
         case "%": return e1%e2;
      }

      return null;
   }
}
