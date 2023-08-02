// Generated from FigLan.g4 by ANTLR 4.12.0
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link FigLanParser}.
 */
public interface FigLanListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link FigLanParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(FigLanParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link FigLanParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(FigLanParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by {@link FigLanParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterStat(FigLanParser.StatContext ctx);
	/**
	 * Exit a parse tree produced by {@link FigLanParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitStat(FigLanParser.StatContext ctx);
	/**
	 * Enter a parse tree produced by the {@code DeclareStruct}
	 * labeled alternative in {@link FigLanParser#declare}.
	 * @param ctx the parse tree
	 */
	void enterDeclareStruct(FigLanParser.DeclareStructContext ctx);
	/**
	 * Exit a parse tree produced by the {@code DeclareStruct}
	 * labeled alternative in {@link FigLanParser#declare}.
	 * @param ctx the parse tree
	 */
	void exitDeclareStruct(FigLanParser.DeclareStructContext ctx);
	/**
	 * Enter a parse tree produced by the {@code DeclareAssignStruct}
	 * labeled alternative in {@link FigLanParser#declare}.
	 * @param ctx the parse tree
	 */
	void enterDeclareAssignStruct(FigLanParser.DeclareAssignStructContext ctx);
	/**
	 * Exit a parse tree produced by the {@code DeclareAssignStruct}
	 * labeled alternative in {@link FigLanParser#declare}.
	 * @param ctx the parse tree
	 */
	void exitDeclareAssignStruct(FigLanParser.DeclareAssignStructContext ctx);
	/**
	 * Enter a parse tree produced by the {@code AssignStruct}
	 * labeled alternative in {@link FigLanParser#assign}.
	 * @param ctx the parse tree
	 */
	void enterAssignStruct(FigLanParser.AssignStructContext ctx);
	/**
	 * Exit a parse tree produced by the {@code AssignStruct}
	 * labeled alternative in {@link FigLanParser#assign}.
	 * @param ctx the parse tree
	 */
	void exitAssignStruct(FigLanParser.AssignStructContext ctx);
	/**
	 * Enter a parse tree produced by the {@code AssignAddSub}
	 * labeled alternative in {@link FigLanParser#assign}.
	 * @param ctx the parse tree
	 */
	void enterAssignAddSub(FigLanParser.AssignAddSubContext ctx);
	/**
	 * Exit a parse tree produced by the {@code AssignAddSub}
	 * labeled alternative in {@link FigLanParser#assign}.
	 * @param ctx the parse tree
	 */
	void exitAssignAddSub(FigLanParser.AssignAddSubContext ctx);
	/**
	 * Enter a parse tree produced by the {@code showAll}
	 * labeled alternative in {@link FigLanParser#show}.
	 * @param ctx the parse tree
	 */
	void enterShowAll(FigLanParser.ShowAllContext ctx);
	/**
	 * Exit a parse tree produced by the {@code showAll}
	 * labeled alternative in {@link FigLanParser#show}.
	 * @param ctx the parse tree
	 */
	void exitShowAll(FigLanParser.ShowAllContext ctx);
	/**
	 * Enter a parse tree produced by the {@code showID}
	 * labeled alternative in {@link FigLanParser#show}.
	 * @param ctx the parse tree
	 */
	void enterShowID(FigLanParser.ShowIDContext ctx);
	/**
	 * Exit a parse tree produced by the {@code showID}
	 * labeled alternative in {@link FigLanParser#show}.
	 * @param ctx the parse tree
	 */
	void exitShowID(FigLanParser.ShowIDContext ctx);
	/**
	 * Enter a parse tree produced by the {@code showConstructor}
	 * labeled alternative in {@link FigLanParser#show}.
	 * @param ctx the parse tree
	 */
	void enterShowConstructor(FigLanParser.ShowConstructorContext ctx);
	/**
	 * Exit a parse tree produced by the {@code showConstructor}
	 * labeled alternative in {@link FigLanParser#show}.
	 * @param ctx the parse tree
	 */
	void exitShowConstructor(FigLanParser.ShowConstructorContext ctx);
	/**
	 * Enter a parse tree produced by the {@code hideAll}
	 * labeled alternative in {@link FigLanParser#hide}.
	 * @param ctx the parse tree
	 */
	void enterHideAll(FigLanParser.HideAllContext ctx);
	/**
	 * Exit a parse tree produced by the {@code hideAll}
	 * labeled alternative in {@link FigLanParser#hide}.
	 * @param ctx the parse tree
	 */
	void exitHideAll(FigLanParser.HideAllContext ctx);
	/**
	 * Enter a parse tree produced by the {@code hideID}
	 * labeled alternative in {@link FigLanParser#hide}.
	 * @param ctx the parse tree
	 */
	void enterHideID(FigLanParser.HideIDContext ctx);
	/**
	 * Exit a parse tree produced by the {@code hideID}
	 * labeled alternative in {@link FigLanParser#hide}.
	 * @param ctx the parse tree
	 */
	void exitHideID(FigLanParser.HideIDContext ctx);
	/**
	 * Enter a parse tree produced by {@link FigLanParser#pause}.
	 * @param ctx the parse tree
	 */
	void enterPause(FigLanParser.PauseContext ctx);
	/**
	 * Exit a parse tree produced by {@link FigLanParser#pause}.
	 * @param ctx the parse tree
	 */
	void exitPause(FigLanParser.PauseContext ctx);
	/**
	 * Enter a parse tree produced by {@link FigLanParser#println}.
	 * @param ctx the parse tree
	 */
	void enterPrintln(FigLanParser.PrintlnContext ctx);
	/**
	 * Exit a parse tree produced by {@link FigLanParser#println}.
	 * @param ctx the parse tree
	 */
	void exitPrintln(FigLanParser.PrintlnContext ctx);
	/**
	 * Enter a parse tree produced by {@link FigLanParser#print}.
	 * @param ctx the parse tree
	 */
	void enterPrint(FigLanParser.PrintContext ctx);
	/**
	 * Exit a parse tree produced by {@link FigLanParser#print}.
	 * @param ctx the parse tree
	 */
	void exitPrint(FigLanParser.PrintContext ctx);
	/**
	 * Enter a parse tree produced by {@link FigLanParser#loop}.
	 * @param ctx the parse tree
	 */
	void enterLoop(FigLanParser.LoopContext ctx);
	/**
	 * Exit a parse tree produced by {@link FigLanParser#loop}.
	 * @param ctx the parse tree
	 */
	void exitLoop(FigLanParser.LoopContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ConstructLine}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterConstructLine(FigLanParser.ConstructLineContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ConstructLine}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitConstructLine(FigLanParser.ConstructLineContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ConstructCircle}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterConstructCircle(FigLanParser.ConstructCircleContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ConstructCircle}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitConstructCircle(FigLanParser.ConstructCircleContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprRead}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprRead(FigLanParser.ExprReadContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprRead}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprRead(FigLanParser.ExprReadContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprParent}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprParent(FigLanParser.ExprParentContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprParent}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprParent(FigLanParser.ExprParentContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprConvert}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprConvert(FigLanParser.ExprConvertContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprConvert}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprConvert(FigLanParser.ExprConvertContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprInt}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprInt(FigLanParser.ExprIntContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprInt}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprInt(FigLanParser.ExprIntContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprText}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprText(FigLanParser.ExprTextContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprText}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprText(FigLanParser.ExprTextContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprAddSub}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprAddSub(FigLanParser.ExprAddSubContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprAddSub}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprAddSub(FigLanParser.ExprAddSubContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ConstructPoint}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterConstructPoint(FigLanParser.ConstructPointContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ConstructPoint}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitConstructPoint(FigLanParser.ConstructPointContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprMultDiv}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprMultDiv(FigLanParser.ExprMultDivContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprMultDiv}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprMultDiv(FigLanParser.ExprMultDivContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprSign}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprSign(FigLanParser.ExprSignContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprSign}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprSign(FigLanParser.ExprSignContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprReal}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprReal(FigLanParser.ExprRealContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprReal}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprReal(FigLanParser.ExprRealContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprID}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprID(FigLanParser.ExprIDContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprID}
	 * labeled alternative in {@link FigLanParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprID(FigLanParser.ExprIDContext ctx);
	/**
	 * Enter a parse tree produced by the {@code PointStructure}
	 * labeled alternative in {@link FigLanParser#point}.
	 * @param ctx the parse tree
	 */
	void enterPointStructure(FigLanParser.PointStructureContext ctx);
	/**
	 * Exit a parse tree produced by the {@code PointStructure}
	 * labeled alternative in {@link FigLanParser#point}.
	 * @param ctx the parse tree
	 */
	void exitPointStructure(FigLanParser.PointStructureContext ctx);
	/**
	 * Enter a parse tree produced by the {@code PointID}
	 * labeled alternative in {@link FigLanParser#point}.
	 * @param ctx the parse tree
	 */
	void enterPointID(FigLanParser.PointIDContext ctx);
	/**
	 * Exit a parse tree produced by the {@code PointID}
	 * labeled alternative in {@link FigLanParser#point}.
	 * @param ctx the parse tree
	 */
	void exitPointID(FigLanParser.PointIDContext ctx);
	/**
	 * Enter a parse tree produced by the {@code typePoint}
	 * labeled alternative in {@link FigLanParser#type}.
	 * @param ctx the parse tree
	 */
	void enterTypePoint(FigLanParser.TypePointContext ctx);
	/**
	 * Exit a parse tree produced by the {@code typePoint}
	 * labeled alternative in {@link FigLanParser#type}.
	 * @param ctx the parse tree
	 */
	void exitTypePoint(FigLanParser.TypePointContext ctx);
	/**
	 * Enter a parse tree produced by the {@code typeLine}
	 * labeled alternative in {@link FigLanParser#type}.
	 * @param ctx the parse tree
	 */
	void enterTypeLine(FigLanParser.TypeLineContext ctx);
	/**
	 * Exit a parse tree produced by the {@code typeLine}
	 * labeled alternative in {@link FigLanParser#type}.
	 * @param ctx the parse tree
	 */
	void exitTypeLine(FigLanParser.TypeLineContext ctx);
	/**
	 * Enter a parse tree produced by the {@code typeCircle}
	 * labeled alternative in {@link FigLanParser#type}.
	 * @param ctx the parse tree
	 */
	void enterTypeCircle(FigLanParser.TypeCircleContext ctx);
	/**
	 * Exit a parse tree produced by the {@code typeCircle}
	 * labeled alternative in {@link FigLanParser#type}.
	 * @param ctx the parse tree
	 */
	void exitTypeCircle(FigLanParser.TypeCircleContext ctx);
	/**
	 * Enter a parse tree produced by the {@code typeFigure}
	 * labeled alternative in {@link FigLanParser#type}.
	 * @param ctx the parse tree
	 */
	void enterTypeFigure(FigLanParser.TypeFigureContext ctx);
	/**
	 * Exit a parse tree produced by the {@code typeFigure}
	 * labeled alternative in {@link FigLanParser#type}.
	 * @param ctx the parse tree
	 */
	void exitTypeFigure(FigLanParser.TypeFigureContext ctx);
	/**
	 * Enter a parse tree produced by the {@code typeInteger}
	 * labeled alternative in {@link FigLanParser#type}.
	 * @param ctx the parse tree
	 */
	void enterTypeInteger(FigLanParser.TypeIntegerContext ctx);
	/**
	 * Exit a parse tree produced by the {@code typeInteger}
	 * labeled alternative in {@link FigLanParser#type}.
	 * @param ctx the parse tree
	 */
	void exitTypeInteger(FigLanParser.TypeIntegerContext ctx);
	/**
	 * Enter a parse tree produced by the {@code typeReal}
	 * labeled alternative in {@link FigLanParser#type}.
	 * @param ctx the parse tree
	 */
	void enterTypeReal(FigLanParser.TypeRealContext ctx);
	/**
	 * Exit a parse tree produced by the {@code typeReal}
	 * labeled alternative in {@link FigLanParser#type}.
	 * @param ctx the parse tree
	 */
	void exitTypeReal(FigLanParser.TypeRealContext ctx);
	/**
	 * Enter a parse tree produced by the {@code typeText}
	 * labeled alternative in {@link FigLanParser#type}.
	 * @param ctx the parse tree
	 */
	void enterTypeText(FigLanParser.TypeTextContext ctx);
	/**
	 * Exit a parse tree produced by the {@code typeText}
	 * labeled alternative in {@link FigLanParser#type}.
	 * @param ctx the parse tree
	 */
	void exitTypeText(FigLanParser.TypeTextContext ctx);
}