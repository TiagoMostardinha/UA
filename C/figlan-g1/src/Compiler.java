import java.io.File;
import java.util.*;

import org.stringtemplate.v4.*;

import org.antlr.v4.runtime.tree.TerminalNode;
import org.antlr.v4.runtime.ParserRuleContext;

@SuppressWarnings("CheckReturnValue")
public class Compiler extends FigLanBaseVisitor<ST> {

   @Override
   public ST visitProgram(FigLanParser.ProgramContext ctx) {
      ST res = templates.getInstanceOf("module");
      Iterator<FigLanParser.StatContext> list = ctx.stat().iterator();
      while (list.hasNext()) {
         res.add("stat", visit(list.next()).render());
      }
      return res;
   }

   @Override
   public ST visitStat(FigLanParser.StatContext ctx) {
      ST res = templates.getInstanceOf("stats");

      if (ctx.declare() != null) {
         res = visit(ctx.declare());
      }
      if (ctx.assign() != null) {
         res = visit(ctx.assign());
      }
      if (ctx.show() != null) {
         res = visit(ctx.show());
      }
      if (ctx.hide() != null) {
         res = visit(ctx.hide());
      }
      if (ctx.pause() != null) {
         res = visit(ctx.pause());
      }
      if (ctx.print() != null) {
         res = visit(ctx.print());
      }
      if (ctx.println() != null) {
         res = visit(ctx.println());
      }
      if (ctx.loop() != null) {
         res = visit(ctx.loop());
      }

      return res;
   }

   @Override
   public ST visitDeclareStruct(FigLanParser.DeclareStructContext ctx) {
      ST res = templates.getInstanceOf("declare");

      String type = ctx.type().getText();
      res.add("type", type);

      String aux = "";
      for (int i = 0; i < ctx.ID().size(); i++) {
         if (i == 0) {
            aux += ctx.ID(i).getText();
            continue;
         }
         aux += ", " + ctx.ID(i).getText();
      }
      res.add("var", aux);
      res.add("value", null);

      return res;
   }

   @Override
   public ST visitDeclareAssignStruct(FigLanParser.DeclareAssignStructContext ctx) {
      ST res = templates.getInstanceOf("declare2");
      if (ctx.type() != null) {
         res.add("stat", visit(ctx.expr()).render());
         String type = ctx.type().getText();
         res.add("type", type);
         res.add("var", ctx.ID().getText());

         if (type.equals("real") | type.equals("integer") | type.equals("text"))
            res.add("value", ctx.expr().var);
         else
            res.add("value", varLast);

      }

      return res;
   }

   @Override
   public ST visitAssignStruct(FigLanParser.AssignStructContext ctx) {
      ST res = templates.getInstanceOf("assign");

      res.add("stat", visit(ctx.expr()).render());
      res.add("var", ctx.ID().getText());
      if (ctx.expr().var != null)
         res.add("value", ctx.expr().var);
      else
         res.add("value", varLast);

      varLast = ctx.ID().getText();

      return res;
   }

   @Override
   public ST visitAssignAddSub(FigLanParser.AssignAddSubContext ctx) {
      ctx.var = ctx.ID().getText();

      return binaryExpression(ctx, null, visit(ctx.expr()).render(), ctx.var, ctx.ID().getText(),
            ctx.op.getText(), ctx.expr().var);
   }

   @Override
   public ST visitShowAll(FigLanParser.ShowAllContext ctx) {
      ST res = templates.getInstanceOf("showAll");
      return res;
   }

   @Override
   public ST visitShowID(FigLanParser.ShowIDContext ctx) {
      ST res = templates.getInstanceOf("show");
      String aux = "";
      for (int i = 0; i < ctx.ID().size(); i++) {
         aux += ".showElem(" + ctx.ID(i).getText() + ")";
      }
      res.add("value", aux);
      return res;
   }

   @Override
   public ST visitShowConstructor(FigLanParser.ShowConstructorContext ctx) {
      ST res = templates.getInstanceOf("show");
      res.add("stat", visit(ctx.expr()).render());
      res.add("value", ".showElem(" + varLast + ")");
      return res;
   }

   @Override
   public ST visitHideAll(FigLanParser.HideAllContext ctx) {
      ST res = templates.getInstanceOf("hideAll");
      return res;
   }

   @Override
   public ST visitHideID(FigLanParser.HideIDContext ctx) {
      ST res = templates.getInstanceOf("hide");
      String aux = "";
      for (int i = 0; i < ctx.ID().size(); i++) {
         aux += ".hideElem(" + ctx.ID(i).getText() + ")";
      }
      res.add("value", aux);
      return res;
   }

   @Override
   public ST visitPause(FigLanParser.PauseContext ctx) {
      ST res = templates.getInstanceOf("pause");
      res.add("stat", visit(ctx.expr()).render());
      res.add("value", ctx.expr().var);
      return res;

   }

   @Override
   public ST visitPrintln(FigLanParser.PrintlnContext ctx) {
      ST res = templates.getInstanceOf("println");

      String aux = "";
      for (int i = 0; i < ctx.expr().size(); i++) {
         try {
            res.add("stat", visit(ctx.expr(i)).render());

            if (i == 0) {
               try {
                  aux += ctx.expr(i).var;
               } catch (Exception e) {
                  aux += varLast;
               }
               continue;
            }
            aux += "+\" \"+" + ctx.expr(i).var;
         } catch (Exception e) {
            aux += "+\" \"+" + varLast;
         }
      }
      res.add("value", aux);

      return res;

   }

   @Override
   public ST visitPrint(FigLanParser.PrintContext ctx) {
      ST res = templates.getInstanceOf("println");

      String aux = "";
      for (int i = 0; i < ctx.expr().size(); i++) {
         try {
            res.add("stat", visit(ctx.expr(i)).render());

            if (i == 0) {
               try {
                  aux += ctx.expr(i).var;
               } catch (Exception e) {
                  aux += varLast;
               }
               continue;
            }
            aux += "+\" \"+" + ctx.expr(i).var;
         } catch (Exception e) {
            aux += "+\" \"+" + varLast;
         }
      }
      res.add("value", aux);

      return res;
   }

   @Override
   public ST visitLoop(FigLanParser.LoopContext ctx) {
      ST vAssign = visit(ctx.assign());
      String aux = varLast;
      ST vExpr = visit(ctx.expr());

      ST res = templates.getInstanceOf("loop");
      res.add("pre", vAssign.render());
      res.add("pre", vExpr.render());
      res.add("var", aux);
      //res.add("value", ctx.expr().var);
      res.add("max", ctx.expr().var);
      for (FigLanParser.StatContext stat : ctx.stat()) {
         res.add("stat", visit(stat).render());
      }
      return res;
   }

   @Override
   public ST visitConstructLine(FigLanParser.ConstructLineContext ctx) {
      ST res = templates.getInstanceOf("declare2");
      res.add("stat", visit(ctx.point(0)).render());
      String aux = varLast;
      res.add("stat", visit(ctx.point(1)).render());

      String nVar = newVarName();
      res.add("type", "line");
      res.add("var", nVar);

      res.add("value", "new Line(" + aux + "," + varLast + ")");
      varLast = nVar;

      return res;
   }

   @Override
   public ST visitConstructCircle(FigLanParser.ConstructCircleContext ctx) {
      ST res = templates.getInstanceOf("declare2");
      res.add("stat", visit(ctx.point()).render());
      String aux1 = varLast;
      String aux2;
      try {
         res.add("stat", visit(ctx.expr()).render());
         aux2 = ctx.expr().var;
      } catch (Exception e) {
         aux2 = varLast;
      }

      String nVar = newVarName();
      res.add("type", "circle");
      res.add("var", nVar);

      res.add("value", "new Circle(" + aux1 + ",Double.valueOf(" + aux2 + "))");
      varLast = nVar;

      return res;
   }

   @Override
   public ST visitExprRead(FigLanParser.ExprReadContext ctx) {
      ST res = null;
      return visitChildren(ctx);
      // return res;
   }

   @Override
   public ST visitExprParent(FigLanParser.ExprParentContext ctx) {
      ST res = visit(ctx.expr());
      ctx.var = ctx.expr().var;
      return res;
   }

   @Override
   public ST visitExprConvert(FigLanParser.ExprConvertContext ctx) {
      ST res = null;
      // return visitChildren(ctx);
      return res;
   }

   @Override
   public ST visitExprInt(FigLanParser.ExprIntContext ctx) {
      ST res = templates.getInstanceOf("declare");
      res.add("type", "integer");
      ctx.var = newVarName();
      res.add("var", ctx.var);

      if (ctx.INT() != null) {
         res.add("value", Integer.parseInt(ctx.INT().getText()));
      }

      return res;
   }

   @Override
   public ST visitExprText(FigLanParser.ExprTextContext ctx) {
      ST res = templates.getInstanceOf("declare");
      res.add("type", "text");
      ctx.var = newVarName();
      res.add("var", ctx.var);

      if (ctx.TEXT() != null) {
         res.add("value", ctx.TEXT().getText());
      }

      return res;
   }

   @Override
   public ST visitExprAddSub(FigLanParser.ExprAddSubContext ctx) {
      ctx.var = newVarName();
      System.out.println(" " + ctx.var);
      return binaryExpression(ctx, visit(ctx.e1).render(), visit(ctx.e2).render(), ctx.var, ctx.e1.var,
            ctx.op.getText(), ctx.e2.var);
   }

   @Override
   public ST visitConstructPoint(FigLanParser.ConstructPointContext ctx) {
      return visit(ctx.point());
   }

   @Override
   public ST visitExprMultDiv(FigLanParser.ExprMultDivContext ctx) {
      ctx.var = newVarName();
      return binaryExpression(ctx, visit(ctx.e1).render(), visit(ctx.e2).render(), ctx.var, ctx.e1.var,
            ctx.op.getText(), ctx.e2.var);
   }

   @Override
   public ST visitExprSign(FigLanParser.ExprSignContext ctx) {
      ST res = null;
      return visitChildren(ctx);
      // return res;
   }

   @Override
   public ST visitExprReal(FigLanParser.ExprRealContext ctx) {
      ST res = templates.getInstanceOf("declare");
      res.add("type", "real");
      ctx.var = newVarName();
      res.add("var", ctx.var);

      if (ctx.REAL() != null) {
         res.add("value", Double.parseDouble(ctx.REAL().getText()));
      }
      return res;
   }

   // ---
   @Override
   public ST visitExprID(FigLanParser.ExprIDContext ctx) {
      ST res = null;
      varLast = ctx.ID().getText();
      return res;
   }
   // ---

   @Override
   public ST visitPointStructure(FigLanParser.PointStructureContext ctx) {
      ST res = templates.getInstanceOf("declare2");
      String aux1, aux2;
      try {
         res.add("stat", visit(ctx.expr(0)).render());
         aux1 = ctx.expr(0).var;
      } catch (Exception e) {
         aux1 = varLast;
      }
      try {
         res.add("stat", visit(ctx.expr(1)).render());
         aux2 = ctx.expr(1).var;
      } catch (Exception e) {
         aux2 = varLast;
      }

      String nVar = newVarName();
      res.add("type", "point");
      res.add("var", nVar);

      res.add("value", "new Point(Double.valueOf(" + aux1 + "),Double.valueOf(" + aux2 + "))");
      varLast = nVar;

      return res;
   }

   @Override
   public ST visitPointID(FigLanParser.PointIDContext ctx) {
      ST res = new ST("");
      varLast = ctx.ID().getText();
      return res;
   }

   // ---------------------------------------------

   @Override
   public ST visitTypePoint(FigLanParser.TypePointContext ctx) {
      ST res = null;
      // return visitChildren(ctx);
      return res;
   }

   @Override
   public ST visitTypeLine(FigLanParser.TypeLineContext ctx) {
      ST res = null;
      // return visitChildren(ctx);
      return res;
   }

   @Override
   public ST visitTypeCircle(FigLanParser.TypeCircleContext ctx) {
      ST res = null;
      // return visitChildren(ctx);
      return res;
   }

   @Override
   public ST visitTypeFigure(FigLanParser.TypeFigureContext ctx) {
      ST res = null;
      // return visitChildren(ctx);
      return res;
   }

   @Override
   public ST visitTypeInteger(FigLanParser.TypeIntegerContext ctx) {
      ST res = null;
      return res;
   }

   @Override
   public ST visitTypeReal(FigLanParser.TypeRealContext ctx) {
      ST res = null;
      return res;
   }

   @Override
   public ST visitTypeText(FigLanParser.TypeTextContext ctx) {
      ST res = null;
      return res;
   }

   private int varCount = 0;

   private String newVarName() {
      return "v" + varCount++;
   }

   protected ST binaryExpression(ParserRuleContext ctx, String e1Stats, String e2Stats, String var, String e1Var,
         String op, String e2var) {
      ST res = templates.getInstanceOf("binaryExpression");
      res.add("stat", e1Stats);
      res.add("stat", e2Stats);
      res.add("var", var);
      res.add("e1", e1Var);
      res.add("op", op);
      res.add("e2", e2var);
      return res;
   }

   protected HashMap<String, String> varTable = new HashMap<String, String>();
   protected HashMap<String, Geometrics> geomTable = new HashMap<String, Geometrics>();
   protected HashMap<String, Integer> intTable = new HashMap<String, Integer>();
   protected HashMap<String, Double> realTable = new HashMap<String, Double>();
   protected HashMap<String, String> textTable = new HashMap<String, String>();

   String varLast = "";

   private STGroup templates = new STGroupFile("java.stg");
}
