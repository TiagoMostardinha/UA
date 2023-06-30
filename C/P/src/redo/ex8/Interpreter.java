import java.util.HashMap;

@SuppressWarnings("CheckReturnValue")
public class Interpreter extends CalculatorBaseVisitor<String> {

   HashMap<String, String> varTable = new HashMap<String, String>();

   @Override
   public String visitStat(CalculatorParser.StatContext ctx) {
      String res = null;
      if (ctx.expr() != null) {
         res = visit(ctx.expr());
         System.out.printf("%s\n", res);
      }
      if (ctx.assignment() != null){
         res = visit(ctx.assignment());
         System.out.printf("%s\n", res);
      }

      return res;
   }

   @Override
   public String visitAssignment(CalculatorParser.AssignmentContext ctx) {
      String key = ctx.ID().getText();
      String val = visit(ctx.expr());

      varTable.put(key, val);

      return key + " = " + val;
   }

   @Override
   public String visitExprAddSub(CalculatorParser.ExprAddSubContext ctx) {
      String res = null;

      String op = ctx.op.getText();
      String e1 = visit(ctx.expr(0));
      String e2 = visit(ctx.expr(1));
      res = e1 + " " + e2 + " " + op;
      return res;
   }

   @Override
   public String visitExprParent(CalculatorParser.ExprParentContext ctx) {
      return visit(ctx.expr());
   }

   @Override
   public String visitExprUnary(CalculatorParser.ExprUnaryContext ctx) {
      String res = visit(ctx.expr());
      String op = ctx.op.getText();
      res = res + " !" + op;
      return res;
   }

   @Override
   public String visitExprInteger(CalculatorParser.ExprIntegerContext ctx) {
      String res = null;

      if (ctx.INT() != null) {
         res = ctx.INT().getText();
      }

      return res;
   }

   @Override
   public String visitExprID(CalculatorParser.ExprIDContext ctx) {
      String res = varTable.get(ctx.ID().getText());
      return res;
   }

   @Override
   public String visitExprMultDivMod(CalculatorParser.ExprMultDivModContext ctx) {
      String res = null;

      String op = ctx.op.getText();
      String e1 = visit(ctx.expr(0));
      String e2 = visit(ctx.expr(1));

      res = e1 + " " + e2 + " " + op;
      return res;
   }
}
