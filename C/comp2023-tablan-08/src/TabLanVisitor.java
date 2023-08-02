// Generated from TabLan.g4 by ANTLR 4.12.0
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link TabLanParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface TabLanVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link TabLanParser#program}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitProgram(TabLanParser.ProgramContext ctx);
	/**
	 * Visit a parse tree produced by the {@code statDecl}
	 * labeled alternative in {@link TabLanParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStatDecl(TabLanParser.StatDeclContext ctx);
	/**
	 * Visit a parse tree produced by the {@code statAssign}
	 * labeled alternative in {@link TabLanParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStatAssign(TabLanParser.StatAssignContext ctx);
	/**
	 * Visit a parse tree produced by the {@code statCreate}
	 * labeled alternative in {@link TabLanParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStatCreate(TabLanParser.StatCreateContext ctx);
	/**
	 * Visit a parse tree produced by the {@code statRename}
	 * labeled alternative in {@link TabLanParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStatRename(TabLanParser.StatRenameContext ctx);
	/**
	 * Visit a parse tree produced by the {@code statAddLine}
	 * labeled alternative in {@link TabLanParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStatAddLine(TabLanParser.StatAddLineContext ctx);
	/**
	 * Visit a parse tree produced by the {@code statPrint}
	 * labeled alternative in {@link TabLanParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStatPrint(TabLanParser.StatPrintContext ctx);
	/**
	 * Visit a parse tree produced by the {@code statFor}
	 * labeled alternative in {@link TabLanParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStatFor(TabLanParser.StatForContext ctx);
	/**
	 * Visit a parse tree produced by the {@code statComment}
	 * labeled alternative in {@link TabLanParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStatComment(TabLanParser.StatCommentContext ctx);
	/**
	 * Visit a parse tree produced by the {@code dataTypeText}
	 * labeled alternative in {@link TabLanParser#dataType}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDataTypeText(TabLanParser.DataTypeTextContext ctx);
	/**
	 * Visit a parse tree produced by the {@code dataTypeInt}
	 * labeled alternative in {@link TabLanParser#dataType}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDataTypeInt(TabLanParser.DataTypeIntContext ctx);
	/**
	 * Visit a parse tree produced by the {@code dataTypeReal}
	 * labeled alternative in {@link TabLanParser#dataType}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDataTypeReal(TabLanParser.DataTypeRealContext ctx);
	/**
	 * Visit a parse tree produced by the {@code dataTypeID}
	 * labeled alternative in {@link TabLanParser#dataType}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDataTypeID(TabLanParser.DataTypeIDContext ctx);
	/**
	 * Visit a parse tree produced by the {@code exprNew}
	 * labeled alternative in {@link TabLanParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprNew(TabLanParser.ExprNewContext ctx);
	/**
	 * Visit a parse tree produced by the {@code exprLength}
	 * labeled alternative in {@link TabLanParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprLength(TabLanParser.ExprLengthContext ctx);
	/**
	 * Visit a parse tree produced by the {@code exprIDID}
	 * labeled alternative in {@link TabLanParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprIDID(TabLanParser.ExprIDIDContext ctx);
	/**
	 * Visit a parse tree produced by the {@code exprInteger}
	 * labeled alternative in {@link TabLanParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprInteger(TabLanParser.ExprIntegerContext ctx);
	/**
	 * Visit a parse tree produced by the {@code exprRead}
	 * labeled alternative in {@link TabLanParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprRead(TabLanParser.ExprReadContext ctx);
	/**
	 * Visit a parse tree produced by the {@code exprString}
	 * labeled alternative in {@link TabLanParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprString(TabLanParser.ExprStringContext ctx);
	/**
	 * Visit a parse tree produced by the {@code exprParent}
	 * labeled alternative in {@link TabLanParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprParent(TabLanParser.ExprParentContext ctx);
	/**
	 * Visit a parse tree produced by the {@code exprID}
	 * labeled alternative in {@link TabLanParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprID(TabLanParser.ExprIDContext ctx);
	/**
	 * Visit a parse tree produced by the {@code exprReal}
	 * labeled alternative in {@link TabLanParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprReal(TabLanParser.ExprRealContext ctx);
	/**
	 * Visit a parse tree produced by the {@code exprCalc}
	 * labeled alternative in {@link TabLanParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprCalc(TabLanParser.ExprCalcContext ctx);
	/**
	 * Visit a parse tree produced by {@link TabLanParser#terminalRead}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTerminalRead(TabLanParser.TerminalReadContext ctx);
	/**
	 * Visit a parse tree produced by {@link TabLanParser#specialRead}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSpecialRead(TabLanParser.SpecialReadContext ctx);
	/**
	 * Visit a parse tree produced by {@link TabLanParser#fileRead}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFileRead(TabLanParser.FileReadContext ctx);
	/**
	 * Visit a parse tree produced by {@link TabLanParser#rename}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitRename(TabLanParser.RenameContext ctx);
	/**
	 * Visit a parse tree produced by {@link TabLanParser#center}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitCenter(TabLanParser.CenterContext ctx);
	/**
	 * Visit a parse tree produced by {@link TabLanParser#assignExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAssignExpression(TabLanParser.AssignExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link TabLanParser#convertExpresion}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitConvertExpresion(TabLanParser.ConvertExpresionContext ctx);
	/**
	 * Visit a parse tree produced by {@link TabLanParser#declarationStatment}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDeclarationStatment(TabLanParser.DeclarationStatmentContext ctx);
	/**
	 * Visit a parse tree produced by {@link TabLanParser#assignStatment}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAssignStatment(TabLanParser.AssignStatmentContext ctx);
	/**
	 * Visit a parse tree produced by {@link TabLanParser#createTable}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitCreateTable(TabLanParser.CreateTableContext ctx);
	/**
	 * Visit a parse tree produced by {@link TabLanParser#renameStatment}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitRenameStatment(TabLanParser.RenameStatmentContext ctx);
	/**
	 * Visit a parse tree produced by {@link TabLanParser#addLineStatment}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAddLineStatment(TabLanParser.AddLineStatmentContext ctx);
	/**
	 * Visit a parse tree produced by {@link TabLanParser#printStatment}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPrintStatment(TabLanParser.PrintStatmentContext ctx);
	/**
	 * Visit a parse tree produced by {@link TabLanParser#forStatment}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitForStatment(TabLanParser.ForStatmentContext ctx);
}