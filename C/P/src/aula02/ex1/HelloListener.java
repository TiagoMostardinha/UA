// Generated from Hello.g4 by ANTLR 4.12.0
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link HelloParser}.
 */
public interface HelloListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link HelloParser#top}.
	 * @param ctx the parse tree
	 */
	void enterTop(HelloParser.TopContext ctx);
	/**
	 * Exit a parse tree produced by {@link HelloParser#top}.
	 * @param ctx the parse tree
	 */
	void exitTop(HelloParser.TopContext ctx);
	/**
	 * Enter a parse tree produced by {@link HelloParser#greeting}.
	 * @param ctx the parse tree
	 */
	void enterGreeting(HelloParser.GreetingContext ctx);
	/**
	 * Exit a parse tree produced by {@link HelloParser#greeting}.
	 * @param ctx the parse tree
	 */
	void exitGreeting(HelloParser.GreetingContext ctx);
	/**
	 * Enter a parse tree produced by {@link HelloParser#bye}.
	 * @param ctx the parse tree
	 */
	void enterBye(HelloParser.ByeContext ctx);
	/**
	 * Exit a parse tree produced by {@link HelloParser#bye}.
	 * @param ctx the parse tree
	 */
	void exitBye(HelloParser.ByeContext ctx);
}