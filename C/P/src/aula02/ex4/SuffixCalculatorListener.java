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
	 * Enter a parse tree produced by the {@code operation}
	 * labeled alternative in {@link SuffixCalculatorParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterOperation(SuffixCalculatorParser.OperationContext ctx);
	/**
	 * Exit a parse tree produced by the {@code operation}
	 * labeled alternative in {@link SuffixCalculatorParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitOperation(SuffixCalculatorParser.OperationContext ctx);
	/**
	 * Enter a parse tree produced by the {@code literal}
	 * labeled alternative in {@link SuffixCalculatorParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterLiteral(SuffixCalculatorParser.LiteralContext ctx);
	/**
	 * Exit a parse tree produced by the {@code literal}
	 * labeled alternative in {@link SuffixCalculatorParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitLiteral(SuffixCalculatorParser.LiteralContext ctx);
}