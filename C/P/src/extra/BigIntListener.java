// Generated from BigInt.g4 by ANTLR 4.12.0
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link BigIntParser}.
 */
public interface BigIntListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link BigIntParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(BigIntParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link BigIntParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(BigIntParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by {@link BigIntParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterStat(BigIntParser.StatContext ctx);
	/**
	 * Exit a parse tree produced by {@link BigIntParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitStat(BigIntParser.StatContext ctx);
	/**
	 * Enter a parse tree produced by {@link BigIntParser#show}.
	 * @param ctx the parse tree
	 */
	void enterShow(BigIntParser.ShowContext ctx);
	/**
	 * Exit a parse tree produced by {@link BigIntParser#show}.
	 * @param ctx the parse tree
	 */
	void exitShow(BigIntParser.ShowContext ctx);
	/**
	 * Enter a parse tree produced by {@link BigIntParser#if_stat}.
	 * @param ctx the parse tree
	 */
	void enterIf_stat(BigIntParser.If_statContext ctx);
	/**
	 * Exit a parse tree produced by {@link BigIntParser#if_stat}.
	 * @param ctx the parse tree
	 */
	void exitIf_stat(BigIntParser.If_statContext ctx);
	/**
	 * Enter a parse tree produced by {@link BigIntParser#assign}.
	 * @param ctx the parse tree
	 */
	void enterAssign(BigIntParser.AssignContext ctx);
	/**
	 * Exit a parse tree produced by {@link BigIntParser#assign}.
	 * @param ctx the parse tree
	 */
	void exitAssign(BigIntParser.AssignContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprAddSub}
	 * labeled alternative in {@link BigIntParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprAddSub(BigIntParser.ExprAddSubContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprAddSub}
	 * labeled alternative in {@link BigIntParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprAddSub(BigIntParser.ExprAddSubContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprParent}
	 * labeled alternative in {@link BigIntParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprParent(BigIntParser.ExprParentContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprParent}
	 * labeled alternative in {@link BigIntParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprParent(BigIntParser.ExprParentContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprUnary}
	 * labeled alternative in {@link BigIntParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprUnary(BigIntParser.ExprUnaryContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprUnary}
	 * labeled alternative in {@link BigIntParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprUnary(BigIntParser.ExprUnaryContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprInt}
	 * labeled alternative in {@link BigIntParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprInt(BigIntParser.ExprIntContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprInt}
	 * labeled alternative in {@link BigIntParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprInt(BigIntParser.ExprIntContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprID}
	 * labeled alternative in {@link BigIntParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprID(BigIntParser.ExprIDContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprID}
	 * labeled alternative in {@link BigIntParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprID(BigIntParser.ExprIDContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprMultDivMod}
	 * labeled alternative in {@link BigIntParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprMultDivMod(BigIntParser.ExprMultDivModContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprMultDivMod}
	 * labeled alternative in {@link BigIntParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprMultDivMod(BigIntParser.ExprMultDivModContext ctx);
}