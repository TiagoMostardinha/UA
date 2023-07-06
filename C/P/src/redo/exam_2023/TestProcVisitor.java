// Generated from TestProc.g4 by ANTLR 4.12.0
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link TestProcParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface TestProcVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link TestProcParser#program}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitProgram(TestProcParser.ProgramContext ctx);
	/**
	 * Visit a parse tree produced by {@link TestProcParser#stat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStat(TestProcParser.StatContext ctx);
	/**
	 * Visit a parse tree produced by {@link TestProcParser#output}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitOutput(TestProcParser.OutputContext ctx);
	/**
	 * Visit a parse tree produced by {@link TestProcParser#assign}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAssign(TestProcParser.AssignContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ExprReplace}
	 * labeled alternative in {@link TestProcParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprReplace(TestProcParser.ExprReplaceContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ExprConcat}
	 * labeled alternative in {@link TestProcParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprConcat(TestProcParser.ExprConcatContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ExprParent}
	 * labeled alternative in {@link TestProcParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprParent(TestProcParser.ExprParentContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ExprNewLine}
	 * labeled alternative in {@link TestProcParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprNewLine(TestProcParser.ExprNewLineContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ExprID}
	 * labeled alternative in {@link TestProcParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprID(TestProcParser.ExprIDContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ExprStr}
	 * labeled alternative in {@link TestProcParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprStr(TestProcParser.ExprStrContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ExprGrep}
	 * labeled alternative in {@link TestProcParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprGrep(TestProcParser.ExprGrepContext ctx);
}