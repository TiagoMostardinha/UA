import java.util.HashMap;

@SuppressWarnings("CheckReturnValue")
public class FigLanSemantic extends FigLanBaseVisitor<String> {
   HashMap<String, String> map = new HashMap<>();

   @Override public String visitProgram(FigLanParser.ProgramContext ctx) {
      for(FigLanParser.StatContext stat : ctx.stat()){
         visit(stat);
      }
      return "stats";
   }

   @Override public String visitStat(FigLanParser.StatContext ctx) {
      String res = null;
      if(ctx.declare() != null){
         res = visit(ctx.declare());
      }
      if(ctx.assign() != null){
         res = visit(ctx.assign());
      }
      if(ctx.show() != null){
         res = visit(ctx.show());
      }
      if(ctx.hide() != null){
         res = visit(ctx.hide());
      }
      if(ctx.pause() != null){
         res = visit(ctx.pause());
      }
      if(ctx.print() != null){
         res = visit(ctx.print());
      }
      if(ctx.println() != null){
         res = visit(ctx.println());
      }
      if(ctx.loop() != null){
         res = visit(ctx.loop());
      }

      return res;
   }

   @Override public String visitDeclareStruct(FigLanParser.DeclareStructContext ctx) {
      return visit(ctx.declare());                                

   }

   @Override public String visitDeclareAssignStruct(FigLanParser.DeclareAssignStructContext ctx) {
      return visit(ctx.declare());
   }

   @Override public String visitAssignStruct(FigLanParser.AssignStructContext ctx) {
      String res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public String visitAssignAddSub(FigLanParser.AssignAddSubContext ctx) {
      String res = null;
      return visitChildren(ctx);
      //return res;
      
   }

   @Override public String visitShowAll(FigLanParser.ShowAllContext ctx) {
      return visit(ctx.show());
   }

   @Override public String visitShowID(FigLanParser.ShowIDContext ctx) {
      if(map.containsKey(ctx.ID().getText())){
         return "show";
      }
      else{
         System.out.println("Error that id is not declared");
      }
      return null;
   }

   @Override public String visitShowConstructor(FigLanParser.ShowConstructorContext ctx) {
      return visit(ctx.show());
   }

   @Override public String visitHideAll(FigLanParser.HideAllContext ctx) {
      return visit(ctx.hide());
   }

   @Override public String visitHideID(FigLanParser.HideIDContext ctx) {
      if(map.containsKey(ctx.ID().getText())){
         return "hide";
      }
      else{
         System.out.println("Error that id is not declared");
      }
      return null;
   }

   @Override public String visitPause(FigLanParser.PauseContext ctx) {
      if(ctx.expr() != null){
         String type = visit(ctx.expr());
         if(type.equals("integer")){
            return "pause";
         }
         else{
            System.out.println("Error: Pause only takes integer values");
         }
      }
      else{
         return "pause";
      }
   }

   @Override public String visitPrintln(FigLanParser.PrintlnContext ctx) {
      return "println";
   }

   @Override public String visitPrint(FigLanParser.PrintContext ctx) {
      return "print";
   }

   @Override public String visitLoop(FigLanParser.LoopContext ctx) {
      return visit(ctx.loop());
   }

   @Override public String visitConstructLine(FigLanParser.ConstructLineContext ctx) {
      if(ctx.expr().size() == 4){
         String type1 = visit(ctx.expr(0));
         String type2 = visit(ctx.expr(1));
         String type3 = visit(ctx.expr(2));
         String type4 = visit(ctx.expr(3));
         if(type1.equals("integer") && type2.equals("integer") && type3.equals("integer") && type4.equals("integer")){
            return "line";
         }
         else{
            System.out.println("Error: Line only takes integer values");
         }
      }
      else{
         System.out.println("Error: Line takes 4 arguments");
      }
   }

   @Override public String visitConstructCircle(FigLanParser.ConstructCircleContext ctx) {
      if(ctx.expr().size() == 3){
         String type1 = visit(ctx.expr(0));
         String type2 = visit(ctx.expr(1));
         String type3 = visit(ctx.expr(2));
         if(type1.equals("integer") && type2.equals("integer") && type3.equals("real")){
            return "circle";
         }
         else{
            System.out.println("Error: Circle only takes integer values");
         }
      }
      else{
         System.out.println("Error: Circle takes 3 arguments");
      }
   }

   @Override public String visitExprRead(FigLanParser.ExprReadContext ctx) {
      String res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public String visitExprParent(FigLanParser.ExprParentContext ctx) {
      String type = visit(ctx.expr());
      return type;
   }

   @Override public String visitExprConvert(FigLanParser.ExprConvertContext ctx) {
      String res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public String visitExprInt(FigLanParser.ExprIntContext ctx) {
      return "integer";
   }

   @Override public String visitExprText(FigLanParser.ExprTextContext ctx) {
      return "text";
   }

   @Override public String visitExprAddSub(FigLanParser.ExprAddSubContext ctx) {
      String type1 = visit(ctx.e1);
      String type2 = visit(ctx.e2);
      if(type1 == null || type2 == null){
         return null;
      }
      if(!(type1.equals(type2) && type1.equals("number"))){
         System.err.printf("Error: Can only add values of same type!\n");
         return null;
      }
      return type1;
   }

   @Override public String visitConstructPoint(FigLanParser.ConstructPointContext ctx) {
      String res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public String visitExprMultDiv(FigLanParser.ExprMultDivContext ctx) {
      String type1 = visit(ctx.e1);
      String type2 = visit(ctx.e2);
      if(type1 == null || type2 == null){
         return null;
      }
      if(!(type1.equals(type2) && type1.equals("number"))){
         System.err.printf("Error: Can only add values of same type!\n");
         return null;
      }
      return type1;
   }

   @Override public String visitExprSign(FigLanParser.ExprSignContext ctx) {
      String res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public String visitExprReal(FigLanParser.ExprRealContext ctx) {
      return "real";
   }

   @Override public String visitExprID(FigLanParser.ExprIDContext ctx) {
      if(!map.containsKey(ctx.ID().getText())){
         System.out.println("Error that id is not declared");
         return null;
      }
      return map.get(ctx.ID().getText());

   }

   @Override public String visitPointStructure(FigLanParser.PointStructureContext ctx) {
      if(ctx.expr().size() == 2){
         String type1 = visit(ctx.expr(0));
         String type2 = visit(ctx.expr(1));
         if(type1.equals("integer") && type2.equals("integer")){
            return "point";
         }
         else{
            System.out.println("Error: Point only takes integer values");
         }
      }
      else{
         System.out.println("Error: Point takes 2 arguments");
      }
   }

   @Override public String visitPointID(FigLanParser.PointIDContext ctx) {
      String res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public String visitTypePoint(FigLanParser.TypePointContext ctx) {
      return "point";
   }

   @Override public String visitTypeLine(FigLanParser.TypeLineContext ctx) {
      return "line";
   }

   @Override public String visitTypeCircle(FigLanParser.TypeCircleContext ctx) {
      return "circle";
   }

   @Override public String visitTypeFigure(FigLanParser.TypeFigureContext ctx) {
      return "figure";
   }

   @Override public String visitTypeInteger(FigLanParser.TypeIntegerContext ctx) {
      return "integer";
   }

   @Override public String visitTypeReal(FigLanParser.TypeRealContext ctx) {
      return "real";
   }

   @Override public String visitTypeText(FigLanParser.TypeTextContext ctx) {
      return "text";
   }
}
