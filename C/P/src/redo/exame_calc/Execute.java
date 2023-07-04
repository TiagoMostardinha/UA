import java.util.*;

@SuppressWarnings("CheckReturnValue")
public class Execute extends FracLangBaseVisitor<Fraction> {
   HashMap<String, Fraction> varTable = new HashMap<String, Fraction>();
   Scanner sc = new Scanner(System.in);

   @Override
   public Fraction visitStat(FracLangParser.StatContext ctx) {
      Fraction res = null;
      if (ctx.display() != null) {
         res = visit(ctx.display());
      } else if (ctx.assign() != null) {
         res = visit(ctx.assign());
      }
      return res;
   }

   @Override
   public Fraction visitExprFrac(FracLangParser.ExprFracContext ctx) {
      Fraction res = null;
      if (ctx.FRAC() != null) {
         String[] aux = ctx.FRAC().getText().split("/");
         Integer n = Integer.parseInt(aux[0]);
         Integer d;
         try {
            d = Integer.parseInt(aux[1]);
         } catch (Exception e) {
            d = 1;
         }
         res = new Fraction(n, d);
      }
      return res;
   }

   @Override
   public Fraction visitExprAddSub(FracLangParser.ExprAddSubContext ctx) {
      Fraction res = null;
      Fraction e1 = visit(ctx.expr(0));
      Fraction e2 = visit(ctx.expr(1));
      String op = ctx.op.getText();

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
   public Fraction visitExprReduce(FracLangParser.ExprReduceContext ctx) {
      Fraction res = visit(ctx.expr());
      
      return res.reduce();
   }

   @Override
   public Fraction visitExprRead(FracLangParser.ExprReadContext ctx) {
      String out = ctx.STRING().getText();
      System.out.println(out.substring(1, out.length() - 1));
      String in = sc.nextLine();
      if (in.contains("/")) {
         String[] num = in.split("/");
         try {
            return new Fraction(Integer.parseInt(num[0]), Integer.parseInt(num[1]));
         } catch (Exception e) {
            System.err.println("Error Frac invalid");
            return null;
         }
      } else {
         try {
            return new Fraction(Integer.parseInt(in), null);
         } catch (Exception e) {
            System.err.println("Error Frac invalid");
            return null;
         }
      }
   }

   @Override
   public Fraction visitExprMulDiv(FracLangParser.ExprMulDivContext ctx) {
      Fraction res = null;
      Fraction e1 = visit(ctx.expr(0));
      Fraction e2 = visit(ctx.expr(1));
      String op = ctx.op.getText();

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
   public Fraction visitExprParent(FracLangParser.ExprParentContext ctx) {
      return visit(ctx.expr());
   }

   @Override
   public Fraction visitExprUnary(FracLangParser.ExprUnaryContext ctx) {
      Fraction res = visit(ctx.expr());
      String op = ctx.op.getText();

      if (op.equals("-")) {
         res = res.negate();
      }
      return res;
   }

   @Override
   public Fraction visitExprID(FracLangParser.ExprIDContext ctx) {
      return varTable.get(ctx.ID().getText());
   }

   @Override
   public Fraction visitDisplay(FracLangParser.DisplayContext ctx) {
      Fraction res = null;
      if (ctx.expr() != null) {
         res = visit(ctx.expr());
         res.print();
      }
      return res;
   }

   @Override
   public Fraction visitAssign(FracLangParser.AssignContext ctx) {
      Fraction val = visit(ctx.expr());
      String key = ctx.ID().getText();

      varTable.put(key, val);

      return val;
   }

}
