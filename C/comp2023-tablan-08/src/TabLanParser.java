// Generated from TabLan.g4 by ANTLR 4.12.0
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast", "CheckReturnValue"})
public class TabLanParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.12.0", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, T__14=15, T__15=16, T__16=17, 
		T__17=18, T__18=19, T__19=20, T__20=21, T__21=22, T__22=23, T__23=24, 
		T__24=25, T__25=26, T__26=27, T__27=28, T__28=29, T__29=30, T__30=31, 
		T__31=32, T__32=33, T__33=34, T__34=35, ID=36, INT=37, REAL=38, STRING=39, 
		COMMENT=40, WS=41;
	public static final int
		RULE_program = 0, RULE_statement = 1, RULE_dataType = 2, RULE_expression = 3, 
		RULE_terminalRead = 4, RULE_specialRead = 5, RULE_fileRead = 6, RULE_rename = 7, 
		RULE_center = 8, RULE_assignExpression = 9, RULE_convertExpresion = 10, 
		RULE_declarationStatment = 11, RULE_assignStatment = 12, RULE_createTable = 13, 
		RULE_renameStatment = 14, RULE_addLineStatment = 15, RULE_printStatment = 16, 
		RULE_forStatment = 17;
	private static String[] makeRuleNames() {
		return new String[] {
			"program", "statement", "dataType", "expression", "terminalRead", "specialRead", 
			"fileRead", "rename", "center", "assignExpression", "convertExpresion", 
			"declarationStatment", "assignStatment", "createTable", "renameStatment", 
			"addLineStatment", "printStatment", "forStatment"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'text'", "'integer'", "'real'", "'.'", "'('", "')'", "'new'", 
			"'read'", "'+'", "'-'", "'*'", "'/'", "'length'", "'in'", "'using'", 
			"'column'", "'as'", "','", "'->'", "'center'", "':='", "':'", "';'", 
			"'type'", "'table'", "'{'", "'}'", "'['", "']'", "'>>'", "'println'", 
			"'print'", "'for'", "'do'", "'end'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			"ID", "INT", "REAL", "STRING", "COMMENT", "WS"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "TabLan.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public TabLanParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ProgramContext extends ParserRuleContext {
		public TerminalNode EOF() { return getToken(TabLanParser.EOF, 0); }
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
		}
		public ProgramContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_program; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).enterProgram(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).exitProgram(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TabLanVisitor ) return ((TabLanVisitor<? extends T>)visitor).visitProgram(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ProgramContext program() throws RecognitionException {
		ProgramContext _localctx = new ProgramContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_program);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(39);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & 1183548702734L) != 0)) {
				{
				{
				setState(36);
				statement();
				}
				}
				setState(41);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(42);
			match(EOF);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class StatementContext extends ParserRuleContext {
		public StatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_statement; }
	 
		public StatementContext() { }
		public void copyFrom(StatementContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StatCommentContext extends StatementContext {
		public TerminalNode COMMENT() { return getToken(TabLanParser.COMMENT, 0); }
		public StatCommentContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).enterStatComment(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).exitStatComment(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TabLanVisitor ) return ((TabLanVisitor<? extends T>)visitor).visitStatComment(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StatRenameContext extends StatementContext {
		public RenameStatmentContext renameStatment() {
			return getRuleContext(RenameStatmentContext.class,0);
		}
		public StatRenameContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).enterStatRename(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).exitStatRename(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TabLanVisitor ) return ((TabLanVisitor<? extends T>)visitor).visitStatRename(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StatPrintContext extends StatementContext {
		public PrintStatmentContext printStatment() {
			return getRuleContext(PrintStatmentContext.class,0);
		}
		public StatPrintContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).enterStatPrint(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).exitStatPrint(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TabLanVisitor ) return ((TabLanVisitor<? extends T>)visitor).visitStatPrint(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StatAssignContext extends StatementContext {
		public AssignStatmentContext assignStatment() {
			return getRuleContext(AssignStatmentContext.class,0);
		}
		public StatAssignContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).enterStatAssign(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).exitStatAssign(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TabLanVisitor ) return ((TabLanVisitor<? extends T>)visitor).visitStatAssign(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StatAddLineContext extends StatementContext {
		public AddLineStatmentContext addLineStatment() {
			return getRuleContext(AddLineStatmentContext.class,0);
		}
		public StatAddLineContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).enterStatAddLine(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).exitStatAddLine(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TabLanVisitor ) return ((TabLanVisitor<? extends T>)visitor).visitStatAddLine(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StatDeclContext extends StatementContext {
		public DeclarationStatmentContext declarationStatment() {
			return getRuleContext(DeclarationStatmentContext.class,0);
		}
		public StatDeclContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).enterStatDecl(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).exitStatDecl(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TabLanVisitor ) return ((TabLanVisitor<? extends T>)visitor).visitStatDecl(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StatForContext extends StatementContext {
		public ForStatmentContext forStatment() {
			return getRuleContext(ForStatmentContext.class,0);
		}
		public StatForContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).enterStatFor(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).exitStatFor(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TabLanVisitor ) return ((TabLanVisitor<? extends T>)visitor).visitStatFor(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StatCreateContext extends StatementContext {
		public CreateTableContext createTable() {
			return getRuleContext(CreateTableContext.class,0);
		}
		public StatCreateContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).enterStatCreate(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).exitStatCreate(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TabLanVisitor ) return ((TabLanVisitor<? extends T>)visitor).visitStatCreate(this);
			else return visitor.visitChildren(this);
		}
	}

	public final StatementContext statement() throws RecognitionException {
		StatementContext _localctx = new StatementContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_statement);
		try {
			setState(52);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,1,_ctx) ) {
			case 1:
				_localctx = new StatDeclContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(44);
				declarationStatment();
				}
				break;
			case 2:
				_localctx = new StatAssignContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(45);
				assignStatment();
				}
				break;
			case 3:
				_localctx = new StatCreateContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(46);
				createTable();
				}
				break;
			case 4:
				_localctx = new StatRenameContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(47);
				renameStatment();
				}
				break;
			case 5:
				_localctx = new StatAddLineContext(_localctx);
				enterOuterAlt(_localctx, 5);
				{
				setState(48);
				addLineStatment();
				}
				break;
			case 6:
				_localctx = new StatPrintContext(_localctx);
				enterOuterAlt(_localctx, 6);
				{
				setState(49);
				printStatment();
				}
				break;
			case 7:
				_localctx = new StatForContext(_localctx);
				enterOuterAlt(_localctx, 7);
				{
				setState(50);
				forStatment();
				}
				break;
			case 8:
				_localctx = new StatCommentContext(_localctx);
				enterOuterAlt(_localctx, 8);
				{
				setState(51);
				match(COMMENT);
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class DataTypeContext extends ParserRuleContext {
		public DataTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_dataType; }
	 
		public DataTypeContext() { }
		public void copyFrom(DataTypeContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class DataTypeIntContext extends DataTypeContext {
		public DataTypeIntContext(DataTypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).enterDataTypeInt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).exitDataTypeInt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TabLanVisitor ) return ((TabLanVisitor<? extends T>)visitor).visitDataTypeInt(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class DataTypeIDContext extends DataTypeContext {
		public TerminalNode ID() { return getToken(TabLanParser.ID, 0); }
		public DataTypeIDContext(DataTypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).enterDataTypeID(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).exitDataTypeID(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TabLanVisitor ) return ((TabLanVisitor<? extends T>)visitor).visitDataTypeID(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class DataTypeRealContext extends DataTypeContext {
		public DataTypeRealContext(DataTypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).enterDataTypeReal(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).exitDataTypeReal(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TabLanVisitor ) return ((TabLanVisitor<? extends T>)visitor).visitDataTypeReal(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class DataTypeTextContext extends DataTypeContext {
		public DataTypeTextContext(DataTypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).enterDataTypeText(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).exitDataTypeText(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TabLanVisitor ) return ((TabLanVisitor<? extends T>)visitor).visitDataTypeText(this);
			else return visitor.visitChildren(this);
		}
	}

	public final DataTypeContext dataType() throws RecognitionException {
		DataTypeContext _localctx = new DataTypeContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_dataType);
		try {
			setState(58);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__0:
				_localctx = new DataTypeTextContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(54);
				match(T__0);
				}
				break;
			case T__1:
				_localctx = new DataTypeIntContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(55);
				match(T__1);
				}
				break;
			case T__2:
				_localctx = new DataTypeRealContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(56);
				match(T__2);
				}
				break;
			case ID:
				_localctx = new DataTypeIDContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(57);
				match(ID);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ExpressionContext extends ParserRuleContext {
		public ExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expression; }
	 
		public ExpressionContext() { }
		public void copyFrom(ExpressionContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprNewContext extends ExpressionContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ExprNewContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).enterExprNew(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).exitExprNew(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TabLanVisitor ) return ((TabLanVisitor<? extends T>)visitor).visitExprNew(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprLengthContext extends ExpressionContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ExprLengthContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).enterExprLength(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).exitExprLength(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TabLanVisitor ) return ((TabLanVisitor<? extends T>)visitor).visitExprLength(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprIDIDContext extends ExpressionContext {
		public List<TerminalNode> ID() { return getTokens(TabLanParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(TabLanParser.ID, i);
		}
		public ExprIDIDContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).enterExprIDID(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).exitExprIDID(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TabLanVisitor ) return ((TabLanVisitor<? extends T>)visitor).visitExprIDID(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprIntegerContext extends ExpressionContext {
		public TerminalNode INT() { return getToken(TabLanParser.INT, 0); }
		public ExprIntegerContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).enterExprInteger(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).exitExprInteger(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TabLanVisitor ) return ((TabLanVisitor<? extends T>)visitor).visitExprInteger(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprReadContext extends ExpressionContext {
		public TerminalReadContext terminalRead() {
			return getRuleContext(TerminalReadContext.class,0);
		}
		public FileReadContext fileRead() {
			return getRuleContext(FileReadContext.class,0);
		}
		public ExprReadContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).enterExprRead(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).exitExprRead(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TabLanVisitor ) return ((TabLanVisitor<? extends T>)visitor).visitExprRead(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprStringContext extends ExpressionContext {
		public TerminalNode STRING() { return getToken(TabLanParser.STRING, 0); }
		public ExprStringContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).enterExprString(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).exitExprString(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TabLanVisitor ) return ((TabLanVisitor<? extends T>)visitor).visitExprString(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprParentContext extends ExpressionContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ExprParentContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).enterExprParent(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).exitExprParent(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TabLanVisitor ) return ((TabLanVisitor<? extends T>)visitor).visitExprParent(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprIDContext extends ExpressionContext {
		public TerminalNode ID() { return getToken(TabLanParser.ID, 0); }
		public ExprIDContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).enterExprID(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).exitExprID(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TabLanVisitor ) return ((TabLanVisitor<? extends T>)visitor).visitExprID(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprRealContext extends ExpressionContext {
		public TerminalNode REAL() { return getToken(TabLanParser.REAL, 0); }
		public ExprRealContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).enterExprReal(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).exitExprReal(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TabLanVisitor ) return ((TabLanVisitor<? extends T>)visitor).visitExprReal(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprCalcContext extends ExpressionContext {
		public Token op;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public ExprCalcContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).enterExprCalc(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).exitExprCalc(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TabLanVisitor ) return ((TabLanVisitor<? extends T>)visitor).visitExprCalc(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ExpressionContext expression() throws RecognitionException {
		return expression(0);
	}

	private ExpressionContext expression(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		ExpressionContext _localctx = new ExpressionContext(_ctx, _parentState);
		ExpressionContext _prevctx = _localctx;
		int _startState = 6;
		enterRecursionRule(_localctx, 6, RULE_expression, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(86);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,5,_ctx) ) {
			case 1:
				{
				_localctx = new ExprIDContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(61);
				match(ID);
				}
				break;
			case 2:
				{
				_localctx = new ExprIDIDContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(62);
				match(ID);
				setState(63);
				match(T__3);
				setState(64);
				match(ID);
				}
				break;
			case 3:
				{
				_localctx = new ExprIntegerContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(65);
				match(INT);
				}
				break;
			case 4:
				{
				_localctx = new ExprRealContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(66);
				match(REAL);
				}
				break;
			case 5:
				{
				_localctx = new ExprStringContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(67);
				match(STRING);
				}
				break;
			case 6:
				{
				_localctx = new ExprParentContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(68);
				match(T__4);
				setState(69);
				expression(0);
				setState(70);
				match(T__5);
				}
				break;
			case 7:
				{
				_localctx = new ExprNewContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(72);
				match(T__6);
				setState(77);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,3,_ctx) ) {
				case 1:
					{
					setState(73);
					match(T__4);
					setState(74);
					expression(0);
					setState(75);
					match(T__5);
					}
					break;
				}
				}
				break;
			case 8:
				{
				_localctx = new ExprReadContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(79);
				match(T__7);
				setState(82);
				_errHandler.sync(this);
				switch (_input.LA(1)) {
				case T__13:
					{
					setState(80);
					terminalRead();
					}
					break;
				case STRING:
					{
					setState(81);
					fileRead();
					}
					break;
				default:
					throw new NoViableAltException(this);
				}
				}
				break;
			case 9:
				{
				_localctx = new ExprLengthContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(84);
				match(T__12);
				setState(85);
				expression(1);
				}
				break;
			}
			_ctx.stop = _input.LT(-1);
			setState(93);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,6,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					{
					_localctx = new ExprCalcContext(new ExpressionContext(_parentctx, _parentState));
					pushNewRecursionContext(_localctx, _startState, RULE_expression);
					setState(88);
					if (!(precpred(_ctx, 2))) throw new FailedPredicateException(this, "precpred(_ctx, 2)");
					setState(89);
					((ExprCalcContext)_localctx).op = _input.LT(1);
					_la = _input.LA(1);
					if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & 7680L) != 0)) ) {
						((ExprCalcContext)_localctx).op = (Token)_errHandler.recoverInline(this);
					}
					else {
						if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
						_errHandler.reportMatch(this);
						consume();
					}
					setState(90);
					expression(3);
					}
					} 
				}
				setState(95);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,6,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class TerminalReadContext extends ParserRuleContext {
		public TerminalNode STRING() { return getToken(TabLanParser.STRING, 0); }
		public TerminalReadContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_terminalRead; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).enterTerminalRead(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).exitTerminalRead(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TabLanVisitor ) return ((TabLanVisitor<? extends T>)visitor).visitTerminalRead(this);
			else return visitor.visitChildren(this);
		}
	}

	public final TerminalReadContext terminalRead() throws RecognitionException {
		TerminalReadContext _localctx = new TerminalReadContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_terminalRead);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(96);
			match(T__13);
			setState(98);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,7,_ctx) ) {
			case 1:
				{
				setState(97);
				match(STRING);
				}
				break;
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class SpecialReadContext extends ParserRuleContext {
		public List<TerminalNode> INT() { return getTokens(TabLanParser.INT); }
		public TerminalNode INT(int i) {
			return getToken(TabLanParser.INT, i);
		}
		public List<TerminalNode> ID() { return getTokens(TabLanParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(TabLanParser.ID, i);
		}
		public List<TerminalNode> STRING() { return getTokens(TabLanParser.STRING); }
		public TerminalNode STRING(int i) {
			return getToken(TabLanParser.STRING, i);
		}
		public SpecialReadContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_specialRead; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).enterSpecialRead(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).exitSpecialRead(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TabLanVisitor ) return ((TabLanVisitor<? extends T>)visitor).visitSpecialRead(this);
			else return visitor.visitChildren(this);
		}
	}

	public final SpecialReadContext specialRead() throws RecognitionException {
		SpecialReadContext _localctx = new SpecialReadContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_specialRead);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(100);
			match(T__14);
			setState(127);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__15:
				{
				setState(101);
				match(T__15);
				setState(102);
				match(INT);
				setState(103);
				match(T__16);
				setState(104);
				match(ID);
				setState(112);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,8,_ctx);
				while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
					if ( _alt==1 ) {
						{
						{
						setState(105);
						match(T__17);
						setState(106);
						match(T__15);
						setState(107);
						match(INT);
						setState(108);
						match(T__16);
						setState(109);
						match(ID);
						}
						} 
					}
					setState(114);
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,8,_ctx);
				}
				}
				break;
			case STRING:
				{
				setState(115);
				match(STRING);
				setState(116);
				match(T__16);
				setState(117);
				match(ID);
				setState(124);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,9,_ctx);
				while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
					if ( _alt==1 ) {
						{
						{
						setState(118);
						match(T__17);
						setState(119);
						match(STRING);
						setState(120);
						match(T__16);
						setState(121);
						match(ID);
						}
						} 
					}
					setState(126);
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,9,_ctx);
				}
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class FileReadContext extends ParserRuleContext {
		public TerminalNode STRING() { return getToken(TabLanParser.STRING, 0); }
		public SpecialReadContext specialRead() {
			return getRuleContext(SpecialReadContext.class,0);
		}
		public FileReadContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_fileRead; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).enterFileRead(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).exitFileRead(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TabLanVisitor ) return ((TabLanVisitor<? extends T>)visitor).visitFileRead(this);
			else return visitor.visitChildren(this);
		}
	}

	public final FileReadContext fileRead() throws RecognitionException {
		FileReadContext _localctx = new FileReadContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_fileRead);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(129);
			match(STRING);
			setState(131);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,11,_ctx) ) {
			case 1:
				{
				setState(130);
				specialRead();
				}
				break;
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class RenameContext extends ParserRuleContext {
		public TerminalNode STRING() { return getToken(TabLanParser.STRING, 0); }
		public RenameContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_rename; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).enterRename(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).exitRename(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TabLanVisitor ) return ((TabLanVisitor<? extends T>)visitor).visitRename(this);
			else return visitor.visitChildren(this);
		}
	}

	public final RenameContext rename() throws RecognitionException {
		RenameContext _localctx = new RenameContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_rename);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(133);
			match(T__18);
			setState(134);
			match(STRING);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class CenterContext extends ParserRuleContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public CenterContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_center; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).enterCenter(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).exitCenter(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TabLanVisitor ) return ((TabLanVisitor<? extends T>)visitor).visitCenter(this);
			else return visitor.visitChildren(this);
		}
	}

	public final CenterContext center() throws RecognitionException {
		CenterContext _localctx = new CenterContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_center);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(136);
			match(T__19);
			setState(137);
			match(T__4);
			setState(139); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(138);
				expression(0);
				}
				}
				setState(141); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( (((_la) & ~0x3f) == 0 && ((1L << _la) & 1030792159648L) != 0) );
			setState(143);
			match(T__5);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class AssignExpressionContext extends ParserRuleContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public AssignExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_assignExpression; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).enterAssignExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).exitAssignExpression(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TabLanVisitor ) return ((TabLanVisitor<? extends T>)visitor).visitAssignExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final AssignExpressionContext assignExpression() throws RecognitionException {
		AssignExpressionContext _localctx = new AssignExpressionContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_assignExpression);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(145);
			match(T__20);
			setState(146);
			expression(0);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ConvertExpresionContext extends ParserRuleContext {
		public DataTypeContext dataType() {
			return getRuleContext(DataTypeContext.class,0);
		}
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ConvertExpresionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_convertExpresion; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).enterConvertExpresion(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).exitConvertExpresion(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TabLanVisitor ) return ((TabLanVisitor<? extends T>)visitor).visitConvertExpresion(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ConvertExpresionContext convertExpresion() throws RecognitionException {
		ConvertExpresionContext _localctx = new ConvertExpresionContext(_ctx, getState());
		enterRule(_localctx, 20, RULE_convertExpresion);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(148);
			dataType();
			setState(149);
			match(T__4);
			setState(150);
			expression(0);
			setState(151);
			match(T__5);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class DeclarationStatmentContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(TabLanParser.ID, 0); }
		public DataTypeContext dataType() {
			return getRuleContext(DataTypeContext.class,0);
		}
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public RenameContext rename() {
			return getRuleContext(RenameContext.class,0);
		}
		public AssignExpressionContext assignExpression() {
			return getRuleContext(AssignExpressionContext.class,0);
		}
		public DeclarationStatmentContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_declarationStatment; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).enterDeclarationStatment(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).exitDeclarationStatment(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TabLanVisitor ) return ((TabLanVisitor<? extends T>)visitor).visitDeclarationStatment(this);
			else return visitor.visitChildren(this);
		}
	}

	public final DeclarationStatmentContext declarationStatment() throws RecognitionException {
		DeclarationStatmentContext _localctx = new DeclarationStatmentContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_declarationStatment);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(153);
			match(ID);
			setState(154);
			match(T__21);
			setState(155);
			dataType();
			setState(162);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__4:
				{
				setState(156);
				match(T__4);
				setState(157);
				expression(0);
				setState(158);
				match(T__5);
				}
				break;
			case T__18:
				{
				setState(160);
				rename();
				}
				break;
			case T__20:
				{
				setState(161);
				assignExpression();
				}
				break;
			case T__22:
				break;
			default:
				break;
			}
			setState(164);
			match(T__22);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class AssignStatmentContext extends ParserRuleContext {
		public AssignExpressionContext assignExpression() {
			return getRuleContext(AssignExpressionContext.class,0);
		}
		public List<TerminalNode> ID() { return getTokens(TabLanParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(TabLanParser.ID, i);
		}
		public DataTypeContext dataType() {
			return getRuleContext(DataTypeContext.class,0);
		}
		public AssignStatmentContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_assignStatment; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).enterAssignStatment(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).exitAssignStatment(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TabLanVisitor ) return ((TabLanVisitor<? extends T>)visitor).visitAssignStatment(this);
			else return visitor.visitChildren(this);
		}
	}

	public final AssignStatmentContext assignStatment() throws RecognitionException {
		AssignStatmentContext _localctx = new AssignStatmentContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_assignStatment);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(172);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,15,_ctx) ) {
			case 1:
				{
				setState(166);
				match(ID);
				setState(169);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__3) {
					{
					setState(167);
					match(T__3);
					setState(168);
					match(ID);
					}
				}

				}
				break;
			case 2:
				{
				setState(171);
				dataType();
				}
				break;
			}
			setState(174);
			assignExpression();
			setState(175);
			match(T__22);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class CreateTableContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(TabLanParser.ID, 0); }
		public RenameContext rename() {
			return getRuleContext(RenameContext.class,0);
		}
		public List<DeclarationStatmentContext> declarationStatment() {
			return getRuleContexts(DeclarationStatmentContext.class);
		}
		public DeclarationStatmentContext declarationStatment(int i) {
			return getRuleContext(DeclarationStatmentContext.class,i);
		}
		public CreateTableContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_createTable; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).enterCreateTable(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).exitCreateTable(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TabLanVisitor ) return ((TabLanVisitor<? extends T>)visitor).visitCreateTable(this);
			else return visitor.visitChildren(this);
		}
	}

	public final CreateTableContext createTable() throws RecognitionException {
		CreateTableContext _localctx = new CreateTableContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_createTable);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(177);
			match(T__23);
			setState(178);
			match(T__24);
			setState(179);
			match(ID);
			setState(181);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__18) {
				{
				setState(180);
				rename();
				}
			}

			setState(183);
			match(T__25);
			setState(187);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==ID) {
				{
				{
				setState(184);
				declarationStatment();
				}
				}
				setState(189);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(190);
			match(T__26);
			setState(191);
			match(T__22);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class RenameStatmentContext extends ParserRuleContext {
		public List<TerminalNode> ID() { return getTokens(TabLanParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(TabLanParser.ID, i);
		}
		public RenameContext rename() {
			return getRuleContext(RenameContext.class,0);
		}
		public RenameStatmentContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_renameStatment; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).enterRenameStatment(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).exitRenameStatment(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TabLanVisitor ) return ((TabLanVisitor<? extends T>)visitor).visitRenameStatment(this);
			else return visitor.visitChildren(this);
		}
	}

	public final RenameStatmentContext renameStatment() throws RecognitionException {
		RenameStatmentContext _localctx = new RenameStatmentContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_renameStatment);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(193);
			match(ID);
			setState(196);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__3) {
				{
				setState(194);
				match(T__3);
				setState(195);
				match(ID);
				}
			}

			setState(198);
			rename();
			setState(199);
			match(T__22);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class AddLineStatmentContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(TabLanParser.ID, 0); }
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public List<ConvertExpresionContext> convertExpresion() {
			return getRuleContexts(ConvertExpresionContext.class);
		}
		public ConvertExpresionContext convertExpresion(int i) {
			return getRuleContext(ConvertExpresionContext.class,i);
		}
		public AddLineStatmentContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_addLineStatment; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).enterAddLineStatment(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).exitAddLineStatment(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TabLanVisitor ) return ((TabLanVisitor<? extends T>)visitor).visitAddLineStatment(this);
			else return visitor.visitChildren(this);
		}
	}

	public final AddLineStatmentContext addLineStatment() throws RecognitionException {
		AddLineStatmentContext _localctx = new AddLineStatmentContext(_ctx, getState());
		enterRule(_localctx, 30, RULE_addLineStatment);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(201);
			match(T__27);
			setState(211);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & 1030792159662L) != 0)) {
				{
				setState(204);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,19,_ctx) ) {
				case 1:
					{
					setState(202);
					expression(0);
					}
					break;
				case 2:
					{
					setState(203);
					convertExpresion();
					}
					break;
				}
				setState(206);
				match(T__17);
				setState(209);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,20,_ctx) ) {
				case 1:
					{
					setState(207);
					expression(0);
					}
					break;
				case 2:
					{
					setState(208);
					convertExpresion();
					}
					break;
				}
				}
			}

			setState(213);
			match(T__28);
			setState(214);
			match(T__29);
			setState(215);
			match(ID);
			setState(216);
			match(T__22);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class PrintStatmentContext extends ParserRuleContext {
		public Token op;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public CenterContext center() {
			return getRuleContext(CenterContext.class,0);
		}
		public PrintStatmentContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_printStatment; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).enterPrintStatment(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).exitPrintStatment(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TabLanVisitor ) return ((TabLanVisitor<? extends T>)visitor).visitPrintStatment(this);
			else return visitor.visitChildren(this);
		}
	}

	public final PrintStatmentContext printStatment() throws RecognitionException {
		PrintStatmentContext _localctx = new PrintStatmentContext(_ctx, getState());
		enterRule(_localctx, 32, RULE_printStatment);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(218);
			((PrintStatmentContext)_localctx).op = _input.LT(1);
			_la = _input.LA(1);
			if ( !(_la==T__30 || _la==T__31) ) {
				((PrintStatmentContext)_localctx).op = (Token)_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			setState(219);
			expression(0);
			setState(224);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__17) {
				{
				{
				setState(220);
				match(T__17);
				setState(221);
				expression(0);
				}
				}
				setState(226);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(228);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__19) {
				{
				setState(227);
				center();
				}
			}

			setState(230);
			match(T__22);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ForStatmentContext extends ParserRuleContext {
		public List<TerminalNode> ID() { return getTokens(TabLanParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(TabLanParser.ID, i);
		}
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
		}
		public ForStatmentContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_forStatment; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).enterForStatment(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TabLanListener ) ((TabLanListener)listener).exitForStatment(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TabLanVisitor ) return ((TabLanVisitor<? extends T>)visitor).visitForStatment(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ForStatmentContext forStatment() throws RecognitionException {
		ForStatmentContext _localctx = new ForStatmentContext(_ctx, getState());
		enterRule(_localctx, 34, RULE_forStatment);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(232);
			match(T__32);
			setState(233);
			match(ID);
			setState(234);
			match(T__13);
			setState(235);
			match(ID);
			setState(236);
			match(T__33);
			setState(240);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & 1183548702734L) != 0)) {
				{
				{
				setState(237);
				statement();
				}
				}
				setState(242);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(243);
			match(T__34);
			setState(244);
			match(T__22);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public boolean sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
		switch (ruleIndex) {
		case 3:
			return expression_sempred((ExpressionContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean expression_sempred(ExpressionContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 2);
		}
		return true;
	}

	public static final String _serializedATN =
		"\u0004\u0001)\u00f7\u0002\u0000\u0007\u0000\u0002\u0001\u0007\u0001\u0002"+
		"\u0002\u0007\u0002\u0002\u0003\u0007\u0003\u0002\u0004\u0007\u0004\u0002"+
		"\u0005\u0007\u0005\u0002\u0006\u0007\u0006\u0002\u0007\u0007\u0007\u0002"+
		"\b\u0007\b\u0002\t\u0007\t\u0002\n\u0007\n\u0002\u000b\u0007\u000b\u0002"+
		"\f\u0007\f\u0002\r\u0007\r\u0002\u000e\u0007\u000e\u0002\u000f\u0007\u000f"+
		"\u0002\u0010\u0007\u0010\u0002\u0011\u0007\u0011\u0001\u0000\u0005\u0000"+
		"&\b\u0000\n\u0000\f\u0000)\t\u0000\u0001\u0000\u0001\u0000\u0001\u0001"+
		"\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001"+
		"\u0001\u0001\u0003\u00015\b\u0001\u0001\u0002\u0001\u0002\u0001\u0002"+
		"\u0001\u0002\u0003\u0002;\b\u0002\u0001\u0003\u0001\u0003\u0001\u0003"+
		"\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0003"+
		"\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0003"+
		"\u0001\u0003\u0001\u0003\u0003\u0003N\b\u0003\u0001\u0003\u0001\u0003"+
		"\u0001\u0003\u0003\u0003S\b\u0003\u0001\u0003\u0001\u0003\u0003\u0003"+
		"W\b\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0005\u0003\\\b\u0003\n"+
		"\u0003\f\u0003_\t\u0003\u0001\u0004\u0001\u0004\u0003\u0004c\b\u0004\u0001"+
		"\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001"+
		"\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0005\u0005o\b\u0005\n\u0005"+
		"\f\u0005r\t\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001"+
		"\u0005\u0001\u0005\u0001\u0005\u0005\u0005{\b\u0005\n\u0005\f\u0005~\t"+
		"\u0005\u0003\u0005\u0080\b\u0005\u0001\u0006\u0001\u0006\u0003\u0006\u0084"+
		"\b\u0006\u0001\u0007\u0001\u0007\u0001\u0007\u0001\b\u0001\b\u0001\b\u0004"+
		"\b\u008c\b\b\u000b\b\f\b\u008d\u0001\b\u0001\b\u0001\t\u0001\t\u0001\t"+
		"\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\u000b\u0001\u000b\u0001"+
		"\u000b\u0001\u000b\u0001\u000b\u0001\u000b\u0001\u000b\u0001\u000b\u0001"+
		"\u000b\u0003\u000b\u00a3\b\u000b\u0001\u000b\u0001\u000b\u0001\f\u0001"+
		"\f\u0001\f\u0003\f\u00aa\b\f\u0001\f\u0003\f\u00ad\b\f\u0001\f\u0001\f"+
		"\u0001\f\u0001\r\u0001\r\u0001\r\u0001\r\u0003\r\u00b6\b\r\u0001\r\u0001"+
		"\r\u0005\r\u00ba\b\r\n\r\f\r\u00bd\t\r\u0001\r\u0001\r\u0001\r\u0001\u000e"+
		"\u0001\u000e\u0001\u000e\u0003\u000e\u00c5\b\u000e\u0001\u000e\u0001\u000e"+
		"\u0001\u000e\u0001\u000f\u0001\u000f\u0001\u000f\u0003\u000f\u00cd\b\u000f"+
		"\u0001\u000f\u0001\u000f\u0001\u000f\u0003\u000f\u00d2\b\u000f\u0003\u000f"+
		"\u00d4\b\u000f\u0001\u000f\u0001\u000f\u0001\u000f\u0001\u000f\u0001\u000f"+
		"\u0001\u0010\u0001\u0010\u0001\u0010\u0001\u0010\u0005\u0010\u00df\b\u0010"+
		"\n\u0010\f\u0010\u00e2\t\u0010\u0001\u0010\u0003\u0010\u00e5\b\u0010\u0001"+
		"\u0010\u0001\u0010\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001"+
		"\u0011\u0001\u0011\u0005\u0011\u00ef\b\u0011\n\u0011\f\u0011\u00f2\t\u0011"+
		"\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0000\u0001\u0006\u0012"+
		"\u0000\u0002\u0004\u0006\b\n\f\u000e\u0010\u0012\u0014\u0016\u0018\u001a"+
		"\u001c\u001e \"\u0000\u0002\u0001\u0000\t\f\u0001\u0000\u001f \u010e\u0000"+
		"\'\u0001\u0000\u0000\u0000\u00024\u0001\u0000\u0000\u0000\u0004:\u0001"+
		"\u0000\u0000\u0000\u0006V\u0001\u0000\u0000\u0000\b`\u0001\u0000\u0000"+
		"\u0000\nd\u0001\u0000\u0000\u0000\f\u0081\u0001\u0000\u0000\u0000\u000e"+
		"\u0085\u0001\u0000\u0000\u0000\u0010\u0088\u0001\u0000\u0000\u0000\u0012"+
		"\u0091\u0001\u0000\u0000\u0000\u0014\u0094\u0001\u0000\u0000\u0000\u0016"+
		"\u0099\u0001\u0000\u0000\u0000\u0018\u00ac\u0001\u0000\u0000\u0000\u001a"+
		"\u00b1\u0001\u0000\u0000\u0000\u001c\u00c1\u0001\u0000\u0000\u0000\u001e"+
		"\u00c9\u0001\u0000\u0000\u0000 \u00da\u0001\u0000\u0000\u0000\"\u00e8"+
		"\u0001\u0000\u0000\u0000$&\u0003\u0002\u0001\u0000%$\u0001\u0000\u0000"+
		"\u0000&)\u0001\u0000\u0000\u0000\'%\u0001\u0000\u0000\u0000\'(\u0001\u0000"+
		"\u0000\u0000(*\u0001\u0000\u0000\u0000)\'\u0001\u0000\u0000\u0000*+\u0005"+
		"\u0000\u0000\u0001+\u0001\u0001\u0000\u0000\u0000,5\u0003\u0016\u000b"+
		"\u0000-5\u0003\u0018\f\u0000.5\u0003\u001a\r\u0000/5\u0003\u001c\u000e"+
		"\u000005\u0003\u001e\u000f\u000015\u0003 \u0010\u000025\u0003\"\u0011"+
		"\u000035\u0005(\u0000\u00004,\u0001\u0000\u0000\u00004-\u0001\u0000\u0000"+
		"\u00004.\u0001\u0000\u0000\u00004/\u0001\u0000\u0000\u000040\u0001\u0000"+
		"\u0000\u000041\u0001\u0000\u0000\u000042\u0001\u0000\u0000\u000043\u0001"+
		"\u0000\u0000\u00005\u0003\u0001\u0000\u0000\u00006;\u0005\u0001\u0000"+
		"\u00007;\u0005\u0002\u0000\u00008;\u0005\u0003\u0000\u00009;\u0005$\u0000"+
		"\u0000:6\u0001\u0000\u0000\u0000:7\u0001\u0000\u0000\u0000:8\u0001\u0000"+
		"\u0000\u0000:9\u0001\u0000\u0000\u0000;\u0005\u0001\u0000\u0000\u0000"+
		"<=\u0006\u0003\uffff\uffff\u0000=W\u0005$\u0000\u0000>?\u0005$\u0000\u0000"+
		"?@\u0005\u0004\u0000\u0000@W\u0005$\u0000\u0000AW\u0005%\u0000\u0000B"+
		"W\u0005&\u0000\u0000CW\u0005\'\u0000\u0000DE\u0005\u0005\u0000\u0000E"+
		"F\u0003\u0006\u0003\u0000FG\u0005\u0006\u0000\u0000GW\u0001\u0000\u0000"+
		"\u0000HM\u0005\u0007\u0000\u0000IJ\u0005\u0005\u0000\u0000JK\u0003\u0006"+
		"\u0003\u0000KL\u0005\u0006\u0000\u0000LN\u0001\u0000\u0000\u0000MI\u0001"+
		"\u0000\u0000\u0000MN\u0001\u0000\u0000\u0000NW\u0001\u0000\u0000\u0000"+
		"OR\u0005\b\u0000\u0000PS\u0003\b\u0004\u0000QS\u0003\f\u0006\u0000RP\u0001"+
		"\u0000\u0000\u0000RQ\u0001\u0000\u0000\u0000SW\u0001\u0000\u0000\u0000"+
		"TU\u0005\r\u0000\u0000UW\u0003\u0006\u0003\u0001V<\u0001\u0000\u0000\u0000"+
		"V>\u0001\u0000\u0000\u0000VA\u0001\u0000\u0000\u0000VB\u0001\u0000\u0000"+
		"\u0000VC\u0001\u0000\u0000\u0000VD\u0001\u0000\u0000\u0000VH\u0001\u0000"+
		"\u0000\u0000VO\u0001\u0000\u0000\u0000VT\u0001\u0000\u0000\u0000W]\u0001"+
		"\u0000\u0000\u0000XY\n\u0002\u0000\u0000YZ\u0007\u0000\u0000\u0000Z\\"+
		"\u0003\u0006\u0003\u0003[X\u0001\u0000\u0000\u0000\\_\u0001\u0000\u0000"+
		"\u0000][\u0001\u0000\u0000\u0000]^\u0001\u0000\u0000\u0000^\u0007\u0001"+
		"\u0000\u0000\u0000_]\u0001\u0000\u0000\u0000`b\u0005\u000e\u0000\u0000"+
		"ac\u0005\'\u0000\u0000ba\u0001\u0000\u0000\u0000bc\u0001\u0000\u0000\u0000"+
		"c\t\u0001\u0000\u0000\u0000d\u007f\u0005\u000f\u0000\u0000ef\u0005\u0010"+
		"\u0000\u0000fg\u0005%\u0000\u0000gh\u0005\u0011\u0000\u0000hp\u0005$\u0000"+
		"\u0000ij\u0005\u0012\u0000\u0000jk\u0005\u0010\u0000\u0000kl\u0005%\u0000"+
		"\u0000lm\u0005\u0011\u0000\u0000mo\u0005$\u0000\u0000ni\u0001\u0000\u0000"+
		"\u0000or\u0001\u0000\u0000\u0000pn\u0001\u0000\u0000\u0000pq\u0001\u0000"+
		"\u0000\u0000q\u0080\u0001\u0000\u0000\u0000rp\u0001\u0000\u0000\u0000"+
		"st\u0005\'\u0000\u0000tu\u0005\u0011\u0000\u0000u|\u0005$\u0000\u0000"+
		"vw\u0005\u0012\u0000\u0000wx\u0005\'\u0000\u0000xy\u0005\u0011\u0000\u0000"+
		"y{\u0005$\u0000\u0000zv\u0001\u0000\u0000\u0000{~\u0001\u0000\u0000\u0000"+
		"|z\u0001\u0000\u0000\u0000|}\u0001\u0000\u0000\u0000}\u0080\u0001\u0000"+
		"\u0000\u0000~|\u0001\u0000\u0000\u0000\u007fe\u0001\u0000\u0000\u0000"+
		"\u007fs\u0001\u0000\u0000\u0000\u0080\u000b\u0001\u0000\u0000\u0000\u0081"+
		"\u0083\u0005\'\u0000\u0000\u0082\u0084\u0003\n\u0005\u0000\u0083\u0082"+
		"\u0001\u0000\u0000\u0000\u0083\u0084\u0001\u0000\u0000\u0000\u0084\r\u0001"+
		"\u0000\u0000\u0000\u0085\u0086\u0005\u0013\u0000\u0000\u0086\u0087\u0005"+
		"\'\u0000\u0000\u0087\u000f\u0001\u0000\u0000\u0000\u0088\u0089\u0005\u0014"+
		"\u0000\u0000\u0089\u008b\u0005\u0005\u0000\u0000\u008a\u008c\u0003\u0006"+
		"\u0003\u0000\u008b\u008a\u0001\u0000\u0000\u0000\u008c\u008d\u0001\u0000"+
		"\u0000\u0000\u008d\u008b\u0001\u0000\u0000\u0000\u008d\u008e\u0001\u0000"+
		"\u0000\u0000\u008e\u008f\u0001\u0000\u0000\u0000\u008f\u0090\u0005\u0006"+
		"\u0000\u0000\u0090\u0011\u0001\u0000\u0000\u0000\u0091\u0092\u0005\u0015"+
		"\u0000\u0000\u0092\u0093\u0003\u0006\u0003\u0000\u0093\u0013\u0001\u0000"+
		"\u0000\u0000\u0094\u0095\u0003\u0004\u0002\u0000\u0095\u0096\u0005\u0005"+
		"\u0000\u0000\u0096\u0097\u0003\u0006\u0003\u0000\u0097\u0098\u0005\u0006"+
		"\u0000\u0000\u0098\u0015\u0001\u0000\u0000\u0000\u0099\u009a\u0005$\u0000"+
		"\u0000\u009a\u009b\u0005\u0016\u0000\u0000\u009b\u00a2\u0003\u0004\u0002"+
		"\u0000\u009c\u009d\u0005\u0005\u0000\u0000\u009d\u009e\u0003\u0006\u0003"+
		"\u0000\u009e\u009f\u0005\u0006\u0000\u0000\u009f\u00a3\u0001\u0000\u0000"+
		"\u0000\u00a0\u00a3\u0003\u000e\u0007\u0000\u00a1\u00a3\u0003\u0012\t\u0000"+
		"\u00a2\u009c\u0001\u0000\u0000\u0000\u00a2\u00a0\u0001\u0000\u0000\u0000"+
		"\u00a2\u00a1\u0001\u0000\u0000\u0000\u00a2\u00a3\u0001\u0000\u0000\u0000"+
		"\u00a3\u00a4\u0001\u0000\u0000\u0000\u00a4\u00a5\u0005\u0017\u0000\u0000"+
		"\u00a5\u0017\u0001\u0000\u0000\u0000\u00a6\u00a9\u0005$\u0000\u0000\u00a7"+
		"\u00a8\u0005\u0004\u0000\u0000\u00a8\u00aa\u0005$\u0000\u0000\u00a9\u00a7"+
		"\u0001\u0000\u0000\u0000\u00a9\u00aa\u0001\u0000\u0000\u0000\u00aa\u00ad"+
		"\u0001\u0000\u0000\u0000\u00ab\u00ad\u0003\u0004\u0002\u0000\u00ac\u00a6"+
		"\u0001\u0000\u0000\u0000\u00ac\u00ab\u0001\u0000\u0000\u0000\u00ad\u00ae"+
		"\u0001\u0000\u0000\u0000\u00ae\u00af\u0003\u0012\t\u0000\u00af\u00b0\u0005"+
		"\u0017\u0000\u0000\u00b0\u0019\u0001\u0000\u0000\u0000\u00b1\u00b2\u0005"+
		"\u0018\u0000\u0000\u00b2\u00b3\u0005\u0019\u0000\u0000\u00b3\u00b5\u0005"+
		"$\u0000\u0000\u00b4\u00b6\u0003\u000e\u0007\u0000\u00b5\u00b4\u0001\u0000"+
		"\u0000\u0000\u00b5\u00b6\u0001\u0000\u0000\u0000\u00b6\u00b7\u0001\u0000"+
		"\u0000\u0000\u00b7\u00bb\u0005\u001a\u0000\u0000\u00b8\u00ba\u0003\u0016"+
		"\u000b\u0000\u00b9\u00b8\u0001\u0000\u0000\u0000\u00ba\u00bd\u0001\u0000"+
		"\u0000\u0000\u00bb\u00b9\u0001\u0000\u0000\u0000\u00bb\u00bc\u0001\u0000"+
		"\u0000\u0000\u00bc\u00be\u0001\u0000\u0000\u0000\u00bd\u00bb\u0001\u0000"+
		"\u0000\u0000\u00be\u00bf\u0005\u001b\u0000\u0000\u00bf\u00c0\u0005\u0017"+
		"\u0000\u0000\u00c0\u001b\u0001\u0000\u0000\u0000\u00c1\u00c4\u0005$\u0000"+
		"\u0000\u00c2\u00c3\u0005\u0004\u0000\u0000\u00c3\u00c5\u0005$\u0000\u0000"+
		"\u00c4\u00c2\u0001\u0000\u0000\u0000\u00c4\u00c5\u0001\u0000\u0000\u0000"+
		"\u00c5\u00c6\u0001\u0000\u0000\u0000\u00c6\u00c7\u0003\u000e\u0007\u0000"+
		"\u00c7\u00c8\u0005\u0017\u0000\u0000\u00c8\u001d\u0001\u0000\u0000\u0000"+
		"\u00c9\u00d3\u0005\u001c\u0000\u0000\u00ca\u00cd\u0003\u0006\u0003\u0000"+
		"\u00cb\u00cd\u0003\u0014\n\u0000\u00cc\u00ca\u0001\u0000\u0000\u0000\u00cc"+
		"\u00cb\u0001\u0000\u0000\u0000\u00cd\u00ce\u0001\u0000\u0000\u0000\u00ce"+
		"\u00d1\u0005\u0012\u0000\u0000\u00cf\u00d2\u0003\u0006\u0003\u0000\u00d0"+
		"\u00d2\u0003\u0014\n\u0000\u00d1\u00cf\u0001\u0000\u0000\u0000\u00d1\u00d0"+
		"\u0001\u0000\u0000\u0000\u00d2\u00d4\u0001\u0000\u0000\u0000\u00d3\u00cc"+
		"\u0001\u0000\u0000\u0000\u00d3\u00d4\u0001\u0000\u0000\u0000\u00d4\u00d5"+
		"\u0001\u0000\u0000\u0000\u00d5\u00d6\u0005\u001d\u0000\u0000\u00d6\u00d7"+
		"\u0005\u001e\u0000\u0000\u00d7\u00d8\u0005$\u0000\u0000\u00d8\u00d9\u0005"+
		"\u0017\u0000\u0000\u00d9\u001f\u0001\u0000\u0000\u0000\u00da\u00db\u0007"+
		"\u0001\u0000\u0000\u00db\u00e0\u0003\u0006\u0003\u0000\u00dc\u00dd\u0005"+
		"\u0012\u0000\u0000\u00dd\u00df\u0003\u0006\u0003\u0000\u00de\u00dc\u0001"+
		"\u0000\u0000\u0000\u00df\u00e2\u0001\u0000\u0000\u0000\u00e0\u00de\u0001"+
		"\u0000\u0000\u0000\u00e0\u00e1\u0001\u0000\u0000\u0000\u00e1\u00e4\u0001"+
		"\u0000\u0000\u0000\u00e2\u00e0\u0001\u0000\u0000\u0000\u00e3\u00e5\u0003"+
		"\u0010\b\u0000\u00e4\u00e3\u0001\u0000\u0000\u0000\u00e4\u00e5\u0001\u0000"+
		"\u0000\u0000\u00e5\u00e6\u0001\u0000\u0000\u0000\u00e6\u00e7\u0005\u0017"+
		"\u0000\u0000\u00e7!\u0001\u0000\u0000\u0000\u00e8\u00e9\u0005!\u0000\u0000"+
		"\u00e9\u00ea\u0005$\u0000\u0000\u00ea\u00eb\u0005\u000e\u0000\u0000\u00eb"+
		"\u00ec\u0005$\u0000\u0000\u00ec\u00f0\u0005\"\u0000\u0000\u00ed\u00ef"+
		"\u0003\u0002\u0001\u0000\u00ee\u00ed\u0001\u0000\u0000\u0000\u00ef\u00f2"+
		"\u0001\u0000\u0000\u0000\u00f0\u00ee\u0001\u0000\u0000\u0000\u00f0\u00f1"+
		"\u0001\u0000\u0000\u0000\u00f1\u00f3\u0001\u0000\u0000\u0000\u00f2\u00f0"+
		"\u0001\u0000\u0000\u0000\u00f3\u00f4\u0005#\u0000\u0000\u00f4\u00f5\u0005"+
		"\u0017\u0000\u0000\u00f5#\u0001\u0000\u0000\u0000\u0019\'4:MRV]bp|\u007f"+
		"\u0083\u008d\u00a2\u00a9\u00ac\u00b5\u00bb\u00c4\u00cc\u00d1\u00d3\u00e0"+
		"\u00e4\u00f0";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}