import java.math.BigInteger;
import java.util.HashMap;

@SuppressWarnings("CheckReturnValue")
public class Execute extends BigIntCalcBaseVisitor<BigInteger> {
   HashMap<String, BigInteger> varTable = new HashMap<String, BigInteger>();

   @Override
   public BigInteger visitStat(BigIntCalcParser.StatContext ctx) {
      BigInteger res = null;
      if (ctx.show() != null) {
         res = visit(ctx.show());
      }
      if (ctx.assign() != null) {
         res = visit(ctx.assign());
      }
      return res;
   }

   @Override
   public BigInteger visitShow(BigIntCalcParser.ShowContext ctx) {
      BigInteger res = visit(ctx.expr());
      System.out.printf("%s\n", res.toString());
      return res;
   }

   @Override
   public BigInteger visitAssign(BigIntCalcParser.AssignContext ctx) {
      BigInteger val = visit(ctx.expr());
      String key = ctx.ID().getText();

      varTable.put(key, val);

      return val;
   }

   @Override
   public BigInteger visitExprAddSub(BigIntCalcParser.ExprAddSubContext ctx) {
      BigInteger res = null;

      BigInteger e1 = visit(ctx.expr(0));
      BigInteger e2 = visit(ctx.expr(1));
      String op = ctx.op.getText();

      switch (op) {
         case "+":
            res = e1.add(e2);
            break;
         case "-":
            res = e1.subtract(e2);
            break;
      }

      return res;
   }

   @Override
   public BigInteger visitExprParent(BigIntCalcParser.ExprParentContext ctx) {
      return visit(ctx.expr());
   }

   @Override
   public BigInteger visitExprUnary(BigIntCalcParser.ExprUnaryContext ctx) {
      BigInteger res = null;

      BigInteger e = visit(ctx.expr());
      String op = ctx.op.getText();

      if (op.equals("-")) {
         res = e.negate();
      }

      return res;
   }

   @Override
   public BigInteger visitExprInt(BigIntCalcParser.ExprIntContext ctx) {
      BigInteger res = null;

      if (ctx.INT() != null) {
         res = new BigInteger(ctx.INT().getText());
      }

      return res;
   }

   @Override
   public BigInteger visitExprID(BigIntCalcParser.ExprIDContext ctx) {
      String key = ctx.ID().getText();

      if (varTable.containsKey(key))
         return varTable.get(key);

      return null;
   }

   @Override
   public BigInteger visitExprMultDivMod(BigIntCalcParser.ExprMultDivModContext ctx) {
      BigInteger res = null;

      BigInteger e1 = visit(ctx.expr(0));
      BigInteger e2 = visit(ctx.expr(1));
      String op = ctx.op.getText();

      switch (op) {
         case "*":
            res = e1.multiply(e2);
            break;
         case "div":
            res = e1.divide(e2);
            break;
         case "mod":
            res = e1.remainder(e2);
            break;
      }
      return res;
   }
}
