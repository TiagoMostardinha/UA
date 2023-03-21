// Generated from Hello.g4 by ANTLR 4.12.0
import org.antlr.v4.runtime.tree.AbstractParseTreeVisitor;

/**
 * This class provides an empty implementation of {@link HelloVisitor},
 * which can be extended to create a visitor which only needs to handle a subset
 * of the available methods.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
@SuppressWarnings("CheckReturnValue")
public class MyVisitor extends HelloBaseVisitor<Object> {
	@Override public Object visitGreeting(HelloParser.GreetingContext ctx) { 
		System.out.printf("Ola \n");
		return null;
	}
	@Override public Object visitBye(HelloParser.ByeContext ctx) { 
		System.out.printf("Adeus\n");
		return null;
	}

}