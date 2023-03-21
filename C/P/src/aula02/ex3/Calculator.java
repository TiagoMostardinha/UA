@SuppressWarnings("CheckReturnValue")
public class Calculator extends CalculatorBaseVisitor<Interpreter> {

   @Override public Interpreter visitProgram(CalculatorParser.ProgramContext ctx) {
      Interpreter res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public Interpreter visitStat(CalculatorParser.StatContext ctx) {
      Interpreter res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public Interpreter visitExprAddSub(CalculatorParser.ExprAddSubContext ctx) {
      Interpreter res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public Interpreter visitExprParent(CalculatorParser.ExprParentContext ctx) {
      Interpreter res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public Interpreter visitExprInteger(CalculatorParser.ExprIntegerContext ctx) {
      Interpreter res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public Interpreter visitExprMultDivMod(CalculatorParser.ExprMultDivModContext ctx) {
      Interpreter res = null;
      return visitChildren(ctx);
      //return res;
   }
}
