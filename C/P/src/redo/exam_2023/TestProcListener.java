// Generated from TestProc.g4 by ANTLR 4.12.0
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link TestProcParser}.
 */
public interface TestProcListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link TestProcParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(TestProcParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link TestProcParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(TestProcParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by {@link TestProcParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterStat(TestProcParser.StatContext ctx);
	/**
	 * Exit a parse tree produced by {@link TestProcParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitStat(TestProcParser.StatContext ctx);
	/**
	 * Enter a parse tree produced by {@link TestProcParser#output}.
	 * @param ctx the parse tree
	 */
	void enterOutput(TestProcParser.OutputContext ctx);
	/**
	 * Exit a parse tree produced by {@link TestProcParser#output}.
	 * @param ctx the parse tree
	 */
	void exitOutput(TestProcParser.OutputContext ctx);
	/**
	 * Enter a parse tree produced by {@link TestProcParser#assign}.
	 * @param ctx the parse tree
	 */
	void enterAssign(TestProcParser.AssignContext ctx);
	/**
	 * Exit a parse tree produced by {@link TestProcParser#assign}.
	 * @param ctx the parse tree
	 */
	void exitAssign(TestProcParser.AssignContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprReplace}
	 * labeled alternative in {@link TestProcParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprReplace(TestProcParser.ExprReplaceContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprReplace}
	 * labeled alternative in {@link TestProcParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprReplace(TestProcParser.ExprReplaceContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprConcat}
	 * labeled alternative in {@link TestProcParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprConcat(TestProcParser.ExprConcatContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprConcat}
	 * labeled alternative in {@link TestProcParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprConcat(TestProcParser.ExprConcatContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprParent}
	 * labeled alternative in {@link TestProcParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprParent(TestProcParser.ExprParentContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprParent}
	 * labeled alternative in {@link TestProcParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprParent(TestProcParser.ExprParentContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprNewLine}
	 * labeled alternative in {@link TestProcParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprNewLine(TestProcParser.ExprNewLineContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprNewLine}
	 * labeled alternative in {@link TestProcParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprNewLine(TestProcParser.ExprNewLineContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprID}
	 * labeled alternative in {@link TestProcParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprID(TestProcParser.ExprIDContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprID}
	 * labeled alternative in {@link TestProcParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprID(TestProcParser.ExprIDContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprStr}
	 * labeled alternative in {@link TestProcParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprStr(TestProcParser.ExprStrContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprStr}
	 * labeled alternative in {@link TestProcParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprStr(TestProcParser.ExprStrContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprGrep}
	 * labeled alternative in {@link TestProcParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprGrep(TestProcParser.ExprGrepContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprGrep}
	 * labeled alternative in {@link TestProcParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprGrep(TestProcParser.ExprGrepContext ctx);
}