// Generated from SuffixCalculator.g4 by ANTLR 4.12.0
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link SuffixCalculatorParser}.
 */
public interface SuffixCalculatorListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link SuffixCalculatorParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(SuffixCalculatorParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link SuffixCalculatorParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(SuffixCalculatorParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by {@link SuffixCalculatorParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterStatement(SuffixCalculatorParser.StatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link SuffixCalculatorParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitStatement(SuffixCalculatorParser.StatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link SuffixCalculatorParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExpression(SuffixCalculatorParser.ExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link SuffixCalculatorParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExpression(SuffixCalculatorParser.ExpressionContext ctx);
}