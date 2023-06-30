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
      String res = "Ola ";

      for (int i = 0; i < ctx.ID().size(); i++) {
         res += ctx.ID().get(i) + " ";
      }

      return res + "\n";
   }

   @Override
   public String visitBye(HelloParser.ByeContext ctx) {
      String res = "Adeus ";

      for (int i = 0; i < ctx.ID().size(); i++) {
         res += ctx.ID().get(i) + " ";
      }

      return res + "\n";
   }
}
