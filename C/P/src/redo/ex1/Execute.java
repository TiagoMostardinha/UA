@SuppressWarnings("CheckReturnValue")
public class Execute extends HelloBaseVisitor<String> {

   @Override
   public String visitStat(HelloParser.StatContext ctx) {
      String res = null;
      if (ctx.greetings() != null)
         res = (String) visit(ctx.greetings());
      else if (ctx.bye() != null)
         res = (String) visit(ctx.bye());
      if (res != null)
         System.out.println(res);

      return res;
   }

   @Override
   public String visitGreetings(HelloParser.GreetingsContext ctx) {
      return "Ola " + ctx.ID().getText();
   }

   @Override
   public String visitBye(HelloParser.ByeContext ctx) {
      return "Adeus " + ctx.ID().getText();
   }
}
