import java.util.HashMap;
import java.util.Scanner;

@SuppressWarnings("CheckReturnValue")
public class Execute extends StrLangBaseVisitor<String> {
   protected HashMap<String, String> varTable = new HashMap<String, String>();
   protected Scanner sc = new Scanner(System.in);

   @Override
   public String visitStat(StrLangParser.StatContext ctx) {
      String res = null;
      if (ctx.assign() != null) {
         res = visit(ctx.assign());
      }

      if (ctx.print() != null) {
         res = visit(ctx.print());
         System.out.printf("%s\n", res);
      }

      return res;
   }

   @Override
   public String visitAssign(StrLangParser.AssignContext ctx) {
      String val = visit(ctx.expr());
      String key = ctx.ID().getText();

      varTable.put(key, val);

      return val;
   }

   @Override
   public String visitPrint(StrLangParser.PrintContext ctx) {
      String res = null;

      res = visit(ctx.expr());

      return res;
   }

   @Override
   public String visitExprSubs(StrLangParser.ExprSubsContext ctx) {
      String res = null;
      String e1 = visit(ctx.e1);
      String e2 = visit(ctx.e2);
      String e3 = visit(ctx.e3);

      res = e1.replaceAll(e2, e3);

      return res;
   }

   @Override
   public String visitExprParent(StrLangParser.ExprParentContext ctx) {
      return visit(ctx.expr());
   }

   @Override
   public String visitExprAddRem(StrLangParser.ExprAddRemContext ctx) {
      String res = null;
      String e1 = visit(ctx.e1);
      String e2 = visit(ctx.e2);
      String op = ctx.op.getText();

      switch (op) {
         case "+":
            res = e1.concat(e2);
            break;
         case "-":
            res = e1.replaceAll(e2, "");
            break;
      }

      return res;
   }

   @Override
   public String visitExprInput(StrLangParser.ExprInputContext ctx) {
      String res = visit(ctx.expr());
      System.out.print(res);

      String s = "";
      if (sc.hasNextLine()) {
         s = sc.nextLine();
         return s;
      }

      return null;
   }

   @Override
   public String visitExprTrim(StrLangParser.ExprTrimContext ctx) {
      String res = null;
      String e1 = visit(ctx.expr());

      res = e1.trim();

      return res;
   }

   @Override
   public String visitExprID(StrLangParser.ExprIDContext ctx) {
      String res = varTable.get(ctx.ID().getText());
      return res;
   }

   @Override
   public String visitExprStr(StrLangParser.ExprStrContext ctx) {
      String res = null;

      if (ctx.STRING() != null) {
         res = ctx.STRING().getText();
         res = res.substring(1, res.length() - 1);
      }

      return res;
   }
}
