// Generated from SuffixCalculator.g4 by ANTLR 4.12.0
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link SuffixCalculatorParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface SuffixCalculatorVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link SuffixCalculatorParser#program}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitProgram(SuffixCalculatorParser.ProgramContext ctx);
	/**
	 * Visit a parse tree produced by {@link SuffixCalculatorParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStatement(SuffixCalculatorParser.StatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link SuffixCalculatorParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpression(SuffixCalculatorParser.ExpressionContext ctx);
}