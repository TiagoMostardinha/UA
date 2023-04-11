// Generated from CalcFrac.g4 by ANTLR 4.12.0
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link CalcFracParser}.
 */
public interface CalcFracListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link CalcFracParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(CalcFracParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link CalcFracParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(CalcFracParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by {@link CalcFracParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterStat(CalcFracParser.StatContext ctx);
	/**
	 * Exit a parse tree produced by {@link CalcFracParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitStat(CalcFracParser.StatContext ctx);
	/**
	 * Enter a parse tree produced by {@link CalcFracParser#print}.
	 * @param ctx the parse tree
	 */
	void enterPrint(CalcFracParser.PrintContext ctx);
	/**
	 * Exit a parse tree produced by {@link CalcFracParser#print}.
	 * @param ctx the parse tree
	 */
	void exitPrint(CalcFracParser.PrintContext ctx);
	/**
	 * Enter a parse tree produced by {@link CalcFracParser#assignment}.
	 * @param ctx the parse tree
	 */
	void enterAssignment(CalcFracParser.AssignmentContext ctx);
	/**
	 * Exit a parse tree produced by {@link CalcFracParser#assignment}.
	 * @param ctx the parse tree
	 */
	void exitAssignment(CalcFracParser.AssignmentContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprAddSub}
	 * labeled alternative in {@link CalcFracParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprAddSub(CalcFracParser.ExprAddSubContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprAddSub}
	 * labeled alternative in {@link CalcFracParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprAddSub(CalcFracParser.ExprAddSubContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprParent}
	 * labeled alternative in {@link CalcFracParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprParent(CalcFracParser.ExprParentContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprParent}
	 * labeled alternative in {@link CalcFracParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprParent(CalcFracParser.ExprParentContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprMultDiv}
	 * labeled alternative in {@link CalcFracParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprMultDiv(CalcFracParser.ExprMultDivContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprMultDiv}
	 * labeled alternative in {@link CalcFracParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprMultDiv(CalcFracParser.ExprMultDivContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprReduce}
	 * labeled alternative in {@link CalcFracParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprReduce(CalcFracParser.ExprReduceContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprReduce}
	 * labeled alternative in {@link CalcFracParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprReduce(CalcFracParser.ExprReduceContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprPlusMinus}
	 * labeled alternative in {@link CalcFracParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprPlusMinus(CalcFracParser.ExprPlusMinusContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprPlusMinus}
	 * labeled alternative in {@link CalcFracParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprPlusMinus(CalcFracParser.ExprPlusMinusContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprID}
	 * labeled alternative in {@link CalcFracParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprID(CalcFracParser.ExprIDContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprID}
	 * labeled alternative in {@link CalcFracParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprID(CalcFracParser.ExprIDContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Frac}
	 * labeled alternative in {@link CalcFracParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterFrac(CalcFracParser.FracContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Frac}
	 * labeled alternative in {@link CalcFracParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitFrac(CalcFracParser.FracContext ctx);
}