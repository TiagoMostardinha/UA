import java.math.BigInteger;
import java.util.*;

@SuppressWarnings("CheckReturnValue")
public class Execute extends BigIntBaseVisitor<BigInteger> {

   protected HashMap<String, BigInteger> varTable = new HashMap<String, BigInteger>();

   @Override
   public BigInteger visitStat(BigIntParser.StatContext ctx) {
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
   public BigInteger visitShow(BigIntParser.ShowContext ctx) {
      BigInteger res = null;

      if (ctx.expr() != null) {
         res = visit(ctx.expr());
         System.out.printf("%s\n", res);
      }

      return res;
   }

   @Override
   public BigInteger visitAssign(BigIntParser.AssignContext ctx) {
      BigInteger val = visit(ctx.expr());
      String key = ctx.ID().getText();

      varTable.put(key, val);

      return val;
   }

   @Override
   public BigInteger visitExprAddSub(BigIntParser.ExprAddSubContext ctx) {
      BigInteger res = null;

      String op = ctx.op.getText();
      BigInteger e1 = visit(ctx.expr(0));
      BigInteger e2 = visit(ctx.expr(1));

      switch (op) {
         case "+":
            res = e1.add(e2);
            break;
         case "-":
            res = e1.add(e2);
            break;

      }
      return res;
   }

   @Override
   public BigInteger visitExprParent(BigIntParser.ExprParentContext ctx) {
      BigInteger res = visit(ctx.expr());
      return res;
   }

   @Override
   public BigInteger visitExprUnary(BigIntParser.ExprUnaryContext ctx) {
      BigInteger res = null;

      String op = ctx.op.getText();
      BigInteger e = visit(ctx.expr());

      if (op.equals("-")) {
         res = e.negate();
      }

      return res;
   }

   @Override
   public BigInteger visitExprInt(BigIntParser.ExprIntContext ctx) {
      BigInteger res = null;

      if (ctx.INT() != null) {
         res = new BigInteger(ctx.INT().getText());
      }

      return res;
   }

   @Override
   public BigInteger visitExprID(BigIntParser.ExprIDContext ctx) {
      BigInteger res = null;
      String key = ctx.ID().getText();

      if (varTable.containsKey(key)) {
         res = varTable.get(key);
      }

      return res;
   }

   @Override
   public BigInteger visitExprMultDivMod(BigIntParser.ExprMultDivModContext ctx) {
      BigInteger res = null;

      String op = ctx.op.getText();
      BigInteger e1 = visit(ctx.expr(0));
      BigInteger e2 = visit(ctx.expr(1));

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

@Override public BigInteger visitIf_stat(BigIntParser.If_statContext ctx) {
    BigInteger result = null;
    
    BigInteger condition = visit(ctx.expr());
    if(condition.equals(BigInteger.ZERO)){
        // Execute the 'else' block if it exists when the condition is false
        if(ctx.stat().size() > 1) {
            result = visit(ctx.stat(1));
        }
    } else {
        // Execute the 'then' block when the condition is true
        result = visit(ctx.stat(0));
    }

    return result;



}

}
