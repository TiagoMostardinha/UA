// Generated from TabLan.g4 by ANTLR 4.12.0
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link TabLanParser}.
 */
public interface TabLanListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link TabLanParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(TabLanParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link TabLanParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(TabLanParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by the {@code statDecl}
	 * labeled alternative in {@link TabLanParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterStatDecl(TabLanParser.StatDeclContext ctx);
	/**
	 * Exit a parse tree produced by the {@code statDecl}
	 * labeled alternative in {@link TabLanParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitStatDecl(TabLanParser.StatDeclContext ctx);
	/**
	 * Enter a parse tree produced by the {@code statAssign}
	 * labeled alternative in {@link TabLanParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterStatAssign(TabLanParser.StatAssignContext ctx);
	/**
	 * Exit a parse tree produced by the {@code statAssign}
	 * labeled alternative in {@link TabLanParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitStatAssign(TabLanParser.StatAssignContext ctx);
	/**
	 * Enter a parse tree produced by the {@code statCreate}
	 * labeled alternative in {@link TabLanParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterStatCreate(TabLanParser.StatCreateContext ctx);
	/**
	 * Exit a parse tree produced by the {@code statCreate}
	 * labeled alternative in {@link TabLanParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitStatCreate(TabLanParser.StatCreateContext ctx);
	/**
	 * Enter a parse tree produced by the {@code statRename}
	 * labeled alternative in {@link TabLanParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterStatRename(TabLanParser.StatRenameContext ctx);
	/**
	 * Exit a parse tree produced by the {@code statRename}
	 * labeled alternative in {@link TabLanParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitStatRename(TabLanParser.StatRenameContext ctx);
	/**
	 * Enter a parse tree produced by the {@code statAddLine}
	 * labeled alternative in {@link TabLanParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterStatAddLine(TabLanParser.StatAddLineContext ctx);
	/**
	 * Exit a parse tree produced by the {@code statAddLine}
	 * labeled alternative in {@link TabLanParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitStatAddLine(TabLanParser.StatAddLineContext ctx);
	/**
	 * Enter a parse tree produced by the {@code statPrint}
	 * labeled alternative in {@link TabLanParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterStatPrint(TabLanParser.StatPrintContext ctx);
	/**
	 * Exit a parse tree produced by the {@code statPrint}
	 * labeled alternative in {@link TabLanParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitStatPrint(TabLanParser.StatPrintContext ctx);
	/**
	 * Enter a parse tree produced by the {@code statFor}
	 * labeled alternative in {@link TabLanParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterStatFor(TabLanParser.StatForContext ctx);
	/**
	 * Exit a parse tree produced by the {@code statFor}
	 * labeled alternative in {@link TabLanParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitStatFor(TabLanParser.StatForContext ctx);
	/**
	 * Enter a parse tree produced by the {@code statComment}
	 * labeled alternative in {@link TabLanParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterStatComment(TabLanParser.StatCommentContext ctx);
	/**
	 * Exit a parse tree produced by the {@code statComment}
	 * labeled alternative in {@link TabLanParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitStatComment(TabLanParser.StatCommentContext ctx);
	/**
	 * Enter a parse tree produced by the {@code dataTypeText}
	 * labeled alternative in {@link TabLanParser#dataType}.
	 * @param ctx the parse tree
	 */
	void enterDataTypeText(TabLanParser.DataTypeTextContext ctx);
	/**
	 * Exit a parse tree produced by the {@code dataTypeText}
	 * labeled alternative in {@link TabLanParser#dataType}.
	 * @param ctx the parse tree
	 */
	void exitDataTypeText(TabLanParser.DataTypeTextContext ctx);
	/**
	 * Enter a parse tree produced by the {@code dataTypeInt}
	 * labeled alternative in {@link TabLanParser#dataType}.
	 * @param ctx the parse tree
	 */
	void enterDataTypeInt(TabLanParser.DataTypeIntContext ctx);
	/**
	 * Exit a parse tree produced by the {@code dataTypeInt}
	 * labeled alternative in {@link TabLanParser#dataType}.
	 * @param ctx the parse tree
	 */
	void exitDataTypeInt(TabLanParser.DataTypeIntContext ctx);
	/**
	 * Enter a parse tree produced by the {@code dataTypeReal}
	 * labeled alternative in {@link TabLanParser#dataType}.
	 * @param ctx the parse tree
	 */
	void enterDataTypeReal(TabLanParser.DataTypeRealContext ctx);
	/**
	 * Exit a parse tree produced by the {@code dataTypeReal}
	 * labeled alternative in {@link TabLanParser#dataType}.
	 * @param ctx the parse tree
	 */
	void exitDataTypeReal(TabLanParser.DataTypeRealContext ctx);
	/**
	 * Enter a parse tree produced by the {@code dataTypeID}
	 * labeled alternative in {@link TabLanParser#dataType}.
	 * @param ctx the parse tree
	 */
	void enterDataTypeID(TabLanParser.DataTypeIDContext ctx);
	/**
	 * Exit a parse tree produced by the {@code dataTypeID}
	 * labeled alternative in {@link TabLanParser#dataType}.
	 * @param ctx the parse tree
	 */
	void exitDataTypeID(TabLanParser.DataTypeIDContext ctx);
	/**
	 * Enter a parse tree produced by the {@code exprNew}
	 * labeled alternative in {@link TabLanParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExprNew(TabLanParser.ExprNewContext ctx);
	/**
	 * Exit a parse tree produced by the {@code exprNew}
	 * labeled alternative in {@link TabLanParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExprNew(TabLanParser.ExprNewContext ctx);
	/**
	 * Enter a parse tree produced by the {@code exprLength}
	 * labeled alternative in {@link TabLanParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExprLength(TabLanParser.ExprLengthContext ctx);
	/**
	 * Exit a parse tree produced by the {@code exprLength}
	 * labeled alternative in {@link TabLanParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExprLength(TabLanParser.ExprLengthContext ctx);
	/**
	 * Enter a parse tree produced by the {@code exprIDID}
	 * labeled alternative in {@link TabLanParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExprIDID(TabLanParser.ExprIDIDContext ctx);
	/**
	 * Exit a parse tree produced by the {@code exprIDID}
	 * labeled alternative in {@link TabLanParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExprIDID(TabLanParser.ExprIDIDContext ctx);
	/**
	 * Enter a parse tree produced by the {@code exprInteger}
	 * labeled alternative in {@link TabLanParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExprInteger(TabLanParser.ExprIntegerContext ctx);
	/**
	 * Exit a parse tree produced by the {@code exprInteger}
	 * labeled alternative in {@link TabLanParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExprInteger(TabLanParser.ExprIntegerContext ctx);
	/**
	 * Enter a parse tree produced by the {@code exprRead}
	 * labeled alternative in {@link TabLanParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExprRead(TabLanParser.ExprReadContext ctx);
	/**
	 * Exit a parse tree produced by the {@code exprRead}
	 * labeled alternative in {@link TabLanParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExprRead(TabLanParser.ExprReadContext ctx);
	/**
	 * Enter a parse tree produced by the {@code exprString}
	 * labeled alternative in {@link TabLanParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExprString(TabLanParser.ExprStringContext ctx);
	/**
	 * Exit a parse tree produced by the {@code exprString}
	 * labeled alternative in {@link TabLanParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExprString(TabLanParser.ExprStringContext ctx);
	/**
	 * Enter a parse tree produced by the {@code exprParent}
	 * labeled alternative in {@link TabLanParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExprParent(TabLanParser.ExprParentContext ctx);
	/**
	 * Exit a parse tree produced by the {@code exprParent}
	 * labeled alternative in {@link TabLanParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExprParent(TabLanParser.ExprParentContext ctx);
	/**
	 * Enter a parse tree produced by the {@code exprID}
	 * labeled alternative in {@link TabLanParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExprID(TabLanParser.ExprIDContext ctx);
	/**
	 * Exit a parse tree produced by the {@code exprID}
	 * labeled alternative in {@link TabLanParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExprID(TabLanParser.ExprIDContext ctx);
	/**
	 * Enter a parse tree produced by the {@code exprReal}
	 * labeled alternative in {@link TabLanParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExprReal(TabLanParser.ExprRealContext ctx);
	/**
	 * Exit a parse tree produced by the {@code exprReal}
	 * labeled alternative in {@link TabLanParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExprReal(TabLanParser.ExprRealContext ctx);
	/**
	 * Enter a parse tree produced by the {@code exprCalc}
	 * labeled alternative in {@link TabLanParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExprCalc(TabLanParser.ExprCalcContext ctx);
	/**
	 * Exit a parse tree produced by the {@code exprCalc}
	 * labeled alternative in {@link TabLanParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExprCalc(TabLanParser.ExprCalcContext ctx);
	/**
	 * Enter a parse tree produced by {@link TabLanParser#terminalRead}.
	 * @param ctx the parse tree
	 */
	void enterTerminalRead(TabLanParser.TerminalReadContext ctx);
	/**
	 * Exit a parse tree produced by {@link TabLanParser#terminalRead}.
	 * @param ctx the parse tree
	 */
	void exitTerminalRead(TabLanParser.TerminalReadContext ctx);
	/**
	 * Enter a parse tree produced by {@link TabLanParser#specialRead}.
	 * @param ctx the parse tree
	 */
	void enterSpecialRead(TabLanParser.SpecialReadContext ctx);
	/**
	 * Exit a parse tree produced by {@link TabLanParser#specialRead}.
	 * @param ctx the parse tree
	 */
	void exitSpecialRead(TabLanParser.SpecialReadContext ctx);
	/**
	 * Enter a parse tree produced by {@link TabLanParser#fileRead}.
	 * @param ctx the parse tree
	 */
	void enterFileRead(TabLanParser.FileReadContext ctx);
	/**
	 * Exit a parse tree produced by {@link TabLanParser#fileRead}.
	 * @param ctx the parse tree
	 */
	void exitFileRead(TabLanParser.FileReadContext ctx);
	/**
	 * Enter a parse tree produced by {@link TabLanParser#rename}.
	 * @param ctx the parse tree
	 */
	void enterRename(TabLanParser.RenameContext ctx);
	/**
	 * Exit a parse tree produced by {@link TabLanParser#rename}.
	 * @param ctx the parse tree
	 */
	void exitRename(TabLanParser.RenameContext ctx);
	/**
	 * Enter a parse tree produced by {@link TabLanParser#center}.
	 * @param ctx the parse tree
	 */
	void enterCenter(TabLanParser.CenterContext ctx);
	/**
	 * Exit a parse tree produced by {@link TabLanParser#center}.
	 * @param ctx the parse tree
	 */
	void exitCenter(TabLanParser.CenterContext ctx);
	/**
	 * Enter a parse tree produced by {@link TabLanParser#assignExpression}.
	 * @param ctx the parse tree
	 */
	void enterAssignExpression(TabLanParser.AssignExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link TabLanParser#assignExpression}.
	 * @param ctx the parse tree
	 */
	void exitAssignExpression(TabLanParser.AssignExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link TabLanParser#convertExpresion}.
	 * @param ctx the parse tree
	 */
	void enterConvertExpresion(TabLanParser.ConvertExpresionContext ctx);
	/**
	 * Exit a parse tree produced by {@link TabLanParser#convertExpresion}.
	 * @param ctx the parse tree
	 */
	void exitConvertExpresion(TabLanParser.ConvertExpresionContext ctx);
	/**
	 * Enter a parse tree produced by {@link TabLanParser#declarationStatment}.
	 * @param ctx the parse tree
	 */
	void enterDeclarationStatment(TabLanParser.DeclarationStatmentContext ctx);
	/**
	 * Exit a parse tree produced by {@link TabLanParser#declarationStatment}.
	 * @param ctx the parse tree
	 */
	void exitDeclarationStatment(TabLanParser.DeclarationStatmentContext ctx);
	/**
	 * Enter a parse tree produced by {@link TabLanParser#assignStatment}.
	 * @param ctx the parse tree
	 */
	void enterAssignStatment(TabLanParser.AssignStatmentContext ctx);
	/**
	 * Exit a parse tree produced by {@link TabLanParser#assignStatment}.
	 * @param ctx the parse tree
	 */
	void exitAssignStatment(TabLanParser.AssignStatmentContext ctx);
	/**
	 * Enter a parse tree produced by {@link TabLanParser#createTable}.
	 * @param ctx the parse tree
	 */
	void enterCreateTable(TabLanParser.CreateTableContext ctx);
	/**
	 * Exit a parse tree produced by {@link TabLanParser#createTable}.
	 * @param ctx the parse tree
	 */
	void exitCreateTable(TabLanParser.CreateTableContext ctx);
	/**
	 * Enter a parse tree produced by {@link TabLanParser#renameStatment}.
	 * @param ctx the parse tree
	 */
	void enterRenameStatment(TabLanParser.RenameStatmentContext ctx);
	/**
	 * Exit a parse tree produced by {@link TabLanParser#renameStatment}.
	 * @param ctx the parse tree
	 */
	void exitRenameStatment(TabLanParser.RenameStatmentContext ctx);
	/**
	 * Enter a parse tree produced by {@link TabLanParser#addLineStatment}.
	 * @param ctx the parse tree
	 */
	void enterAddLineStatment(TabLanParser.AddLineStatmentContext ctx);
	/**
	 * Exit a parse tree produced by {@link TabLanParser#addLineStatment}.
	 * @param ctx the parse tree
	 */
	void exitAddLineStatment(TabLanParser.AddLineStatmentContext ctx);
	/**
	 * Enter a parse tree produced by {@link TabLanParser#printStatment}.
	 * @param ctx the parse tree
	 */
	void enterPrintStatment(TabLanParser.PrintStatmentContext ctx);
	/**
	 * Exit a parse tree produced by {@link TabLanParser#printStatment}.
	 * @param ctx the parse tree
	 */
	void exitPrintStatment(TabLanParser.PrintStatmentContext ctx);
	/**
	 * Enter a parse tree produced by {@link TabLanParser#forStatment}.
	 * @param ctx the parse tree
	 */
	void enterForStatment(TabLanParser.ForStatmentContext ctx);
	/**
	 * Exit a parse tree produced by {@link TabLanParser#forStatment}.
	 * @param ctx the parse tree
	 */
	void exitForStatment(TabLanParser.ForStatmentContext ctx);
}