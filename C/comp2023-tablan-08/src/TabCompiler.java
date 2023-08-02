import java.beans.Expression;
import java.util.*;
import org.antlr.v4.runtime.tree.TerminalNode;

import javax.print.DocFlavor.STRING;
import javax.xml.transform.Templates;

import org.stringtemplate.v4.*;


@SuppressWarnings("CheckReturnValue")
public class TabCompiler extends TabLanBaseVisitor<ST> {

   @Override public ST visitProgram(TabLanParser.ProgramContext ctx) {
      ST res = templates.getInstanceOf("module");
      Iterator<TabLanParser.StatementContext> list = ctx.statement().iterator();
      while(list.hasNext()){
         res.add("statement", visit(list.next()).render());
      }
      return res;
   }

   @Override public ST visitStatDecl(TabLanParser.StatDeclContext ctx) {
      ST res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public ST visitStatAssign(TabLanParser.StatAssignContext ctx) {
      ST res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public ST visitStatCreate(TabLanParser.StatCreateContext ctx) {
      ST res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public ST visitStatRename(TabLanParser.StatRenameContext ctx) {
      ST res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public ST visitStatAddLine(TabLanParser.StatAddLineContext ctx) {
      ST res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public ST visitStatPrint(TabLanParser.StatPrintContext ctx) {
      ST res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public ST visitStatFor(TabLanParser.StatForContext ctx) {
      ST res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public ST visitStatComment(TabLanParser.StatCommentContext ctx) {
      ST res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public ST visitDataTypeText(TabLanParser.DataTypeTextContext ctx) {
      ST res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public ST visitDataTypeInt(TabLanParser.DataTypeIntContext ctx) {
      ST res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public ST visitDataTypeReal(TabLanParser.DataTypeRealContext ctx) {
      ST res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public ST visitDataTypeID(TabLanParser.DataTypeIDContext ctx) {
      ST res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public ST visitExprNew(TabLanParser.ExprNewContext ctx) {
      ST res = templates.getInstanceOf("new");
      return res;
   }

   @Override public ST visitExprLength(TabLanParser.ExprLengthContext ctx) {
      ST res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public ST visitExprIDID(TabLanParser.ExprIDIDContext ctx) {
      ST res = templates.getInstanceOf("IDID");
      res.add("id1",ctx.ID(0).getText());
      res.add("id2",ctx.ID(1).getText());
      return res;
   }

   @Override public ST visitExprInteger(TabLanParser.ExprIntegerContext ctx) {
      ST res = templates.getInstanceOf("self");
      res.add("content", ctx.INT().getText());
      return res;
   }

   @Override public ST visitExprRead(TabLanParser.ExprReadContext ctx) {
      ST res = templates.getInstanceOf("read");
      if(ctx.terminalRead() != null){
         res.add("arg",ctx.terminalRead().getText());
      }else if(ctx.fileRead() != null){
         res.add("arg",ctx.fileRead().getText());
      }
      return res;
   }

   @Override public ST visitExprString(TabLanParser.ExprStringContext ctx) {
      ST res = templates.getInstanceOf("self");
      res.add("content", ctx.STRING().getText());
      return res;
   }

   @Override public ST visitExprParent(TabLanParser.ExprParentContext ctx) {
      ST res = templates.getInstanceOf("parent");
      res.add("expr", ctx.expression().getText());
      return res;
   }

   @Override public ST visitExprID(TabLanParser.ExprIDContext ctx) {
      ST res = templates.getInstanceOf("self");
      res.add("content", ctx.ID().getText());
      return res;
   }

   @Override public ST visitExprReal(TabLanParser.ExprRealContext ctx) {
      ST res = templates.getInstanceOf("self");
      res.add("content", ctx.REAL().getText());
      return res;
   }

   @Override public ST visitExprCalc(TabLanParser.ExprCalcContext ctx) {
      ST res = templates.getInstanceOf("calc");
      res.add("exp1", ctx.expression(0).getText());
      res.add("op",ctx.op.getText());
      res.add("exp2", ctx.expression(1).getText());
      return res;
   }

   @Override public ST visitTerminalRead(TabLanParser.TerminalReadContext ctx) {
      ST res = null;
      return visitChildren(ctx);
   }

   @Override public ST visitSpecialRead(TabLanParser.SpecialReadContext ctx) {
      ST res = null;
      return visitChildren(ctx);
   }

   @Override public ST visitFileRead(TabLanParser.FileReadContext ctx) {
      ST res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public ST visitRename(TabLanParser.RenameContext ctx) {
      ST res = templates.getInstanceOf("setName");
      res.add("newName", ctx.STRING().getText());
      return res;
   }

   @Override public ST visitCenter(TabLanParser.CenterContext ctx) {
      ST res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public ST visitAssignExpression(TabLanParser.AssignExpressionContext ctx) {
      ST res = templates.getInstanceOf("self");
      res.add("content", visit(ctx.expression()));
      return res;
   }

   @Override public ST visitConvertExpresion(TabLanParser.ConvertExpresionContext ctx) {
      ST res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public ST visitDeclarationStatment(TabLanParser.DeclarationStatmentContext ctx) {
      ST res = templates.getInstanceOf("decl");
      if(variables.get(ctx.dataType().getText())!=null){
         res.add("type",variables.get(ctx.dataType().getText()));
         res.add("newTable","true");
         variables.put(ctx.ID().getText(), ctx.dataType().getText());

      }
      else if(ctx.dataType().getText().equals("integer")){
         res.add("type", "int");
         variables.put(ctx.ID().getText(), "int");
      }else if(ctx.dataType().getText().equals("real")){
         res.add("type", "float");
         variables.put(ctx.ID().getText(), "float");
      }else if(ctx.dataType().getText().equals("text")){
         res.add("type", "String");
         variables.put(ctx.ID().getText(), "String");
      }

      res.add("var", ctx.ID().getText());

      if (ctx.expression() != null) {
         res.add("operation", visit(ctx.expression()));
      } else if (ctx.rename() != null) {
         res.add("operation", visit(ctx.rename()));
      } else if (ctx.assignExpression() != null) {
         res.add("operation", visit(ctx.assignExpression()));
      }

     return res;
   }

   @Override public ST visitAssignStatment(TabLanParser.AssignStatmentContext ctx) {
      String type1 = variables.get(ctx.ID(0).getText());
      String type2 = variables.get(ctx.ID(0).getText());
   
      while(type2 != "Table" && type2 != "int" && type2 != "float" && type2 != "String"){
         type2 = variables.get(type2);
         if(type2 == null){
            break;
         }
      }

      List<TerminalNode> idTokens = ctx.assignExpression().expression().getTokens(TabLanParser.ID);
      if (idTokens.size() > 1) {
         ST res = new ST("<var>.addColumn(<ID1>.getVar(\"<ID2>\"),<ID1>.getColumn(\"<ID2>\"))");
         res.add("var", ctx.ID(0).getText());
         res.add("ID1", idTokens.get(0).getText());
         res.add("ID2", idTokens.get(1).getText());
         return res;
      }

      if(type2 != null && type2.equals("Table")){
         ST clone = new ST ("<var> = <type1>.clone()");
         clone.add("var",ctx.ID(0).getText());
         clone.add("type1",type1);
         return clone;
      }
      
     
      ST res = templates.getInstanceOf("assign");
      res.add("var", ctx.ID(0).getText());
      res.add("value", visit(ctx.assignExpression()));
      return res;
   }

   @Override public ST visitCreateTable(TabLanParser.CreateTableContext ctx) {
      variables.put(ctx.ID().getText(), "Table");

      Set<ST> set = new HashSet<>();

      ST res = templates.getInstanceOf("createTable");
      res.add("tablename", ctx.ID().getText());

      for(int i=0; i<ctx.declarationStatment().size(); i++){
         ST createDecl = new ST("\"<col>\\\\t<type>\\\\t\\\\<if(newName)><newName><else>t<endif>\"");
         createDecl.add("col",ctx.declarationStatment(i).ID().getText());
         createDecl.add("type",ctx.declarationStatment(i).dataType().getText());
         if(ctx.declarationStatment(i).rename()!=null){
            String str = ctx.declarationStatment(i).rename().STRING().getText();
            String replaced = str.replace("\"", "");
            replaced = "t"+replaced;
            createDecl.add("newName",replaced);
         }
         set.add(createDecl);
      }
      res.add("args",set);

      if(ctx.rename()!=null){
         res.add("newName",ctx.rename().STRING().getText());
      }

      return res;
   }

   @Override public ST visitRenameStatment(TabLanParser.RenameStatmentContext ctx) {
      if(ctx.ID().size() > 1){
         ST res = templates.getInstanceOf("renameHeader");
         res.add("table", ctx.ID(0).getText());
         res.add("column", ctx.ID(1).getText());
         res.add("newName", ctx.rename().STRING().getText());
         return res;
      }else{
         ST res = templates.getInstanceOf("setNameParent");
         res.add("table", ctx.ID(0).getText());
         res.add("rename", visit(ctx.rename()));
         return res;
      }
   }

   @Override public ST visitAddLineStatment(TabLanParser.AddLineStatmentContext ctx) {
      ST res = templates.getInstanceOf("addRow");
      res.add("table", ctx.ID().getText());
      try{
         res.add("arg1", ctx.expression(0).getText());
         res.add("arg2", ctx.expression(1).getText());
      }catch(Exception e){

      }
      return res;
   }

   @Override public ST visitPrintStatment(TabLanParser.PrintStatmentContext ctx) {
      String type1 = variables.get(ctx.expression(0).getText());
      String type2 = variables.get(ctx.expression(0).getText());
      if(type2 != null){
         while(type2 != "Table" && type2 != "int" && type2 != "float" && type2 != "String"){
            type2 = variables.get(type2);
         }
      }

      //if(ctx.center()!=null){
      //   ST res = new ST ("TESTETESTE");
      //   return res;
      //}

      if((type2 != null && type2.equals("Table"))){
         ST res = templates.getInstanceOf("printTable");
         res.add("content",ctx.expression(0).getText());
         return res;
      }else{
         ST res = templates.getInstanceOf("print");
         res.add("content",ctx.expression(0).getText());
         res.add("op",ctx.op.getText());
         return res;
      }
   }

   @Override public ST visitForStatment(TabLanParser.ForStatmentContext ctx) {
      ST res = templates.getInstanceOf("for");
      
      res.add("elem",ctx.ID(0));
      res.add("iteratable",ctx.ID(1));

      
      Set<ST> set = new HashSet<>();
      for(int i=0; i<ctx.statement().size(); i++){
         System.out.println("FOR TESTE");
         set.add(visit(ctx.statement(i)));
      }
      res.add("stats",set);
      System.out.println("XX");
      return res;
   }

   HashMap<String, String> variables = new HashMap<String, String>();

   private STGroup templates = new STGroupFile("java.stg");
}
