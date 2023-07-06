import java.util.HashMap;

@SuppressWarnings("CheckReturnValue")
public class Execute extends TestProcBaseVisitor<String> {

   HashMap<String, String> varTable = new HashMap<String, String>();

   @Override
   public String visitStat(TestProcParser.StatContext ctx) {
      String res = null;
      if (ctx.assign() != null) {
         res = visit(ctx.assign());
      }
      if (ctx.output() != null) {
         res = visit(ctx.output());
      }

      return res;
   }

   @Override
   public String visitOutput(TestProcParser.OutputContext ctx) {
      String res = null;

      if (ctx.expr() != null) {
         res = visit(ctx.expr());
         System.out.println(res);
      }

      return res;
   }

   @Override
   public String visitAssign(TestProcParser.AssignContext ctx) {
      String key = ctx.ID().getText();
      String val = visit(ctx.expr());

      varTable.put(key, val);

      return val;
   }

   @Override
   public String visitExprReplace(TestProcParser.ExprReplaceContext ctx) {
      String res = null;

      String s = visit(ctx.expr(0));
      String rex = visit(ctx.expr(1));
      String r = visit(ctx.expr(2));
      if (r == null){
         r="";
      }

      res = s.replaceAll(rex, r);

      return res;
   }

   @Override
   public String visitExprConcat(TestProcParser.ExprConcatContext ctx) {
      String res = null;

      String s1 = visit(ctx.expr(0));
      String s2 = visit(ctx.expr(1));

      res = s1.concat(s2);

      return res;
   }

   @Override
   public String visitExprParent(TestProcParser.ExprParentContext ctx) {
      return visit(ctx.expr());
   }

   @Override
   public String visitExprNewLine(TestProcParser.ExprNewLineContext ctx) {
      return "\n";
   }

   @Override
   public String visitExprID(TestProcParser.ExprIDContext ctx) {
      String res = null;
      String key = ctx.ID().getText();

      if (varTable.containsKey(key))
         res = varTable.get(key);

      return res;
   }

   @Override
   public String visitExprStr(TestProcParser.ExprStrContext ctx) {
      String res = null;
      if (ctx.STRING() != null) {
         res = ctx.STRING().getText();

         if(res.contains("\"")){
            res = res.replaceAll("\"", "");
         }
      }
      return res;
   }

   @Override
   public String visitExprGrep(TestProcParser.ExprGrepContext ctx) {
      String res = null;

      String[] s = visit(ctx.expr(0)).split("\n");
      String g = visit(ctx.expr(1));

      String aux = "";

      for (String i : s) {
         if (i.contains(g))
            aux.concat(i).concat("\n");
      }

      if (aux.length() > 0)
         res = aux;

      return res;
   }
}
