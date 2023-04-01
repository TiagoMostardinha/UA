// Generated from Numbers.g4 by ANTLR 4.12.0
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link NumbersParser}.
 */
public interface NumbersListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link NumbersParser#top}.
	 * @param ctx the parse tree
	 */
	void enterTop(NumbersParser.TopContext ctx);
	/**
	 * Exit a parse tree produced by {@link NumbersParser#top}.
	 * @param ctx the parse tree
	 */
	void exitTop(NumbersParser.TopContext ctx);
	/**
	 * Enter a parse tree produced by {@link NumbersParser#mapping}.
	 * @param ctx the parse tree
	 */
	void enterMapping(NumbersParser.MappingContext ctx);
	/**
	 * Exit a parse tree produced by {@link NumbersParser#mapping}.
	 * @param ctx the parse tree
	 */
	void exitMapping(NumbersParser.MappingContext ctx);
}