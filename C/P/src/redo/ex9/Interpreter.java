import java.util.HashMap;

@SuppressWarnings("CheckReturnValue")
public class Interpreter extends FracCalculatorBaseVisitor<Fraction> {

   HashMap<String, Fraction> varTable = new HashMap<String, Fraction>();

   @Override
   public Fraction visitStat(FracCalculatorParser.StatContext ctx) {
      Fraction res = null;

      if (ctx.print() != null) {
         res = visit(ctx.print());
      }
      if(ctx.assign() != null){
         res = visit(ctx.assign());
      }

      return res;
   }

   @Override
   public Fraction visitPrint(FracCalculatorParser.PrintContext ctx) {
      Fraction res = null;

      if (ctx.expr() != null) {
         res = visit(ctx.expr());
         res.print();
      }

      return res;
   }

   @Override
   public Fraction visitAssign(FracCalculatorParser.AssignContext ctx) {
      String key = ctx.ID().getText();
      Fraction val = visit(ctx.expr());

      varTable.put(key, val);

      return val;
   }

   @Override
   public Fraction visitExprFrac(FracCalculatorParser.ExprFracContext ctx) {
      Fraction res = null;
      if (ctx.FRAC() != null) {
         String[] temp = ctx.FRAC().getText().split("/");

         Integer n = Integer.parseInt(temp[0]);
         Integer d;
         try {
            d = Integer.parseInt(temp[1]);
         } catch (Exception e) {
            d = 1;
         }

         res = new Fraction(n, d);
      }
      return res;
   }

   @Override
   public Fraction visitExprAddSub(FracCalculatorParser.ExprAddSubContext ctx) {
      Fraction res = null;

      String op = ctx.op.getText();
      Fraction e1 = visit(ctx.expr(0));
      Fraction e2 = visit(ctx.expr(1));

      switch (op) {
         case "+":
            res = e1.add(e2);
            break;
         case "-":
            res = e1.sub(e2);
            break;
      }

      return res;
   }

   @Override
   public Fraction visitExprMulDiv(FracCalculatorParser.ExprMulDivContext ctx) {
      Fraction res = null;

      String op = ctx.op.getText();
      Fraction e1 = visit(ctx.expr(0));
      Fraction e2 = visit(ctx.expr(1));

      switch (op) {
         case "*":
            res = e1.mult(e2);
            break;
         case ":":
            res = e1.div(e2);
            break;
      }

      return res;
   }

   @Override
   public Fraction visitExprParent(FracCalculatorParser.ExprParentContext ctx) {
      return visit(ctx.expr());
   }

   @Override
   public Fraction visitExprUnary(FracCalculatorParser.ExprUnaryContext ctx) {
      Fraction res = null;

      String op = ctx.op.getText();
      res = visit(ctx.expr());

      if (op.equals("-")){
         res.negative();
      }
      
      return res;
   }

   @Override
   public Fraction visitExprPower(FracCalculatorParser.ExprPowerContext ctx) {
      Fraction res = null;
      
      Fraction e1 = visit(ctx.expr(0));
      Fraction e2 = visit(ctx.expr(1));

      res = e1.pow(e2);

      return res;
   }

   @Override
   public Fraction visitExprReduce(FracCalculatorParser.ExprReduceContext ctx) {
      Fraction res = null;
      
      Fraction e1 = visit(ctx.expr());

      res = e1.reduce();

      return res;
   }

   @Override
   public Fraction visitExprID(FracCalculatorParser.ExprIDContext ctx) {
      return varTable.get(ctx.ID().getText());
   }
}
