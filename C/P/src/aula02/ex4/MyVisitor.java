import org.antlr.v4.runtime.tree.*;

@SuppressWarnings("CheckReturnValue")
public class MyVistor extends SuffixCalculatorBaseVisitor<Double> {

   @Override public Double visitProgram(SuffixCalculatorParser.ProgramContext ctx) {
      Double res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public Double visitStatement(SuffixCalculatorParser.StatementContext ctx) {
      Double res = null;
      if (ctx.expression() != null) {
         res = visitExpression(ctx.expression());
         System.out.println(res);
      }
      return res;
   }

   @Override public Double visitExpression(SuffixCalculatorParser.ExpressionContext ctx) {
      Double res = null;
      Double e1,e2;

      TerminalNode number = ctx.NUMBER();

      if (number != null) {
         return Double.parseDouble(number.getText());
      }

      e1 = visitExpression(ctx.expression(0));
      e2 = visitExpression(ctx.expression(1));

      switch(ctx.op.getText()){
         case "*":   return e1 * e2;
         case "/":   return e1 / e2;
         case "+":   return e1 + e2;
         case "-":   return e1 - e2;
      }
      return res;
   }
}