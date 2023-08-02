// Generated from FigLan.g4 by ANTLR 4.12.0
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link FigLanParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface FigLanVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link FigLanParser#program}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitProgram(FigLanParser.ProgramContext ctx);
	/**
	 * Visit a parse tree produced by {@link FigLanParser#stat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStat(FigLanParser.StatContext ctx);
	/**
	 * Visit a parse tree produced by the {@code DeclareStruct}
	 * labeled alternative in {@link FigLanParser#declare}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDeclareStruct(FigLanParser.DeclareStructContext ctx);
	/**
	 * Visit a parse tree produced by the {@code DeclareAssignStruct}
	 * labeled alternative in {@link FigLanParser#declare}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDeclareAssignStruct(FigLanParser.DeclareAssignStructContext ctx);
	/**
	 * Visit a parse tree produced by the {@code AssignStruct}
	 * labeled alternative in {@link FigLanParser#assign}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAssignStruct(FigLanParser.AssignStructContext ctx);
	/**
	 * Visit a parse tree produced by the {@code AssignAddSub}
	 * labeled alternative in {@link FigLanParser#assign}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAssignAddSub(FigLanParser.AssignAddSubContext ctx);
	/**
	 * Visit a parse tree produced by the {@code showAll}
	 * labeled alternative in {@link FigLanParser#show}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitShowAll(FigLanParser.ShowAllContext ctx);
	/**
	 * Visit a parse tree produced by the {@code showID}
	 * labeled alternative in {@link FigLanParser#show}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitShowID(FigLanParser.ShowIDContext ctx);
	/**
	 * Visit a parse tree produced by the {@code showConstructor}
	 * labeled alternative in {@link FigLanParser#show}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitShowConstructor(FigLanParser.ShowConstructorContext ctx);
	/**
	 * Visit a parse tree produced by the {@code hideAll}
	 * labeled alternative in {@link FigLanParser#hide}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitHideAll(FigLanParser.HideAllContext ctx);
	/**
	 * Visit a parse tree produced by the {@code hideID}
	 * labeled alternative in {@link FigLanParser#hide}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitHideID(FigLanParser.HideIDContext ctx);
	/**
	 * Visit a parse tree produced by {@link FigLanParser#pause}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPause(FigLanParser.PauseContext ctx);
	/**
	 * Visit a parse tree produced by {@link FigLanParser#println}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPrintln(FigLanParser.PrintlnContext ctx);
	/**
	 * Visit a parse tree produced by {@link FigLanParser#print}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPrint(FigLanParser.PrintContext ctx);
	/**
	 * Visit a parse tree produced by {@link FigLanParser#loop}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLoop(FigLanParser.LoopContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ConstructLine}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitConstructLine(FigLanParser.ConstructLineContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ConstructCircle}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitConstructCircle(FigLanParser.ConstructCircleContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ExprRead}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprRead(FigLanParser.ExprReadContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ExprParent}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprParent(FigLanParser.ExprParentContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ExprConvert}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprConvert(FigLanParser.ExprConvertContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ExprInt}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprInt(FigLanParser.ExprIntContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ExprText}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprText(FigLanParser.ExprTextContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ExprAddSub}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprAddSub(FigLanParser.ExprAddSubContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ConstructPoint}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitConstructPoint(FigLanParser.ConstructPointContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ExprMultDiv}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprMultDiv(FigLanParser.ExprMultDivContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ExprSign}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprSign(FigLanParser.ExprSignContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ExprReal}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprReal(FigLanParser.ExprRealContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ExprID}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprID(FigLanParser.ExprIDContext ctx);
	/**
	 * Visit a parse tree produced by the {@code PointStructure}
	 * labeled alternative in {@link FigLanParser#point}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPointStructure(FigLanParser.PointStructureContext ctx);
	/**
	 * Visit a parse tree produced by the {@code PointID}
	 * labeled alternative in {@link FigLanParser#point}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPointID(FigLanParser.PointIDContext ctx);
	/**
	 * Visit a parse tree produced by the {@code typePoint}
	 * labeled alternative in {@link FigLanParser#type}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTypePoint(FigLanParser.TypePointContext ctx);
	/**
	 * Visit a parse tree produced by the {@code typeLine}
	 * labeled alternative in {@link FigLanParser#type}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTypeLine(FigLanParser.TypeLineContext ctx);
	/**
	 * Visit a parse tree produced by the {@code typeCircle}
	 * labeled alternative in {@link FigLanParser#type}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTypeCircle(FigLanParser.TypeCircleContext ctx);
	/**
	 * Visit a parse tree produced by the {@code typeFigure}
	 * labeled alternative in {@link FigLanParser#type}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTypeFigure(FigLanParser.TypeFigureContext ctx);
	/**
	 * Visit a parse tree produced by the {@code typeInteger}
	 * labeled alternative in {@link FigLanParser#type}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTypeInteger(FigLanParser.TypeIntegerContext ctx);
	/**
	 * Visit a parse tree produced by the {@code typeReal}
	 * labeled alternative in {@link FigLanParser#type}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTypeReal(FigLanParser.TypeRealContext ctx);
	/**
	 * Visit a parse tree produced by the {@code typeText}
	 * labeled alternative in {@link FigLanParser#type}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTypeText(FigLanParser.TypeTextContext ctx);
}