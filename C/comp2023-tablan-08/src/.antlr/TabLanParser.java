// Generated from /home/labi/comp2023-tablan-08/src/TabLan.g4 by ANTLR 4.9.2
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class TabLanParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.9.2", RuntimeMetaData.VERSION); }

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
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__1) | (1L << T__2) | (1L << T__23) | (1L << T__27) | (1L << T__30) | (1L << T__31) | (1L << T__32) | (1L << ID) | (1L << COMMENT))) != 0)) {
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
	public static class StatCommentContext extends StatementContext {
		public TerminalNode COMMENT() { return getToken(TabLanParser.COMMENT, 0); }
		public StatCommentContext(StatementContext ctx) { copyFrom(ctx); }
	}
	public static class StatRenameContext extends StatementContext {
		public RenameStatmentContext renameStatment() {
			return getRuleContext(RenameStatmentContext.class,0);
		}
		public StatRenameContext(StatementContext ctx) { copyFrom(ctx); }
	}
	public static class StatPrintContext extends StatementContext {
		public PrintStatmentContext printStatment() {
			return getRuleContext(PrintStatmentContext.class,0);
		}
		public StatPrintContext(StatementContext ctx) { copyFrom(ctx); }
	}
	public static class StatAssignContext extends StatementContext {
		public AssignStatmentContext assignStatment() {
			return getRuleContext(AssignStatmentContext.class,0);
		}
		public StatAssignContext(StatementContext ctx) { copyFrom(ctx); }
	}
	public static class StatAddLineContext extends StatementContext {
		public AddLineStatmentContext addLineStatment() {
			return getRuleContext(AddLineStatmentContext.class,0);
		}
		public StatAddLineContext(StatementContext ctx) { copyFrom(ctx); }
	}
	public static class StatDeclContext extends StatementContext {
		public DeclarationStatmentContext declarationStatment() {
			return getRuleContext(DeclarationStatmentContext.class,0);
		}
		public StatDeclContext(StatementContext ctx) { copyFrom(ctx); }
	}
	public static class StatForContext extends StatementContext {
		public ForStatmentContext forStatment() {
			return getRuleContext(ForStatmentContext.class,0);
		}
		public StatForContext(StatementContext ctx) { copyFrom(ctx); }
	}
	public static class StatCreateContext extends StatementContext {
		public CreateTableContext createTable() {
			return getRuleContext(CreateTableContext.class,0);
		}
		public StatCreateContext(StatementContext ctx) { copyFrom(ctx); }
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
	public static class DataTypeIntContext extends DataTypeContext {
		public DataTypeIntContext(DataTypeContext ctx) { copyFrom(ctx); }
	}
	public static class DataTypeIDContext extends DataTypeContext {
		public TerminalNode ID() { return getToken(TabLanParser.ID, 0); }
		public DataTypeIDContext(DataTypeContext ctx) { copyFrom(ctx); }
	}
	public static class DataTypeRealContext extends DataTypeContext {
		public DataTypeRealContext(DataTypeContext ctx) { copyFrom(ctx); }
	}
	public static class DataTypeTextContext extends DataTypeContext {
		public DataTypeTextContext(DataTypeContext ctx) { copyFrom(ctx); }
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
	public static class ExprNewContext extends ExpressionContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ExprNewContext(ExpressionContext ctx) { copyFrom(ctx); }
	}
	public static class ExprLengthContext extends ExpressionContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ExprLengthContext(ExpressionContext ctx) { copyFrom(ctx); }
	}
	public static class ExprIDIDContext extends ExpressionContext {
		public List<TerminalNode> ID() { return getTokens(TabLanParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(TabLanParser.ID, i);
		}
		public ExprIDIDContext(ExpressionContext ctx) { copyFrom(ctx); }
	}
	public static class ExprIntegerContext extends ExpressionContext {
		public TerminalNode INT() { return getToken(TabLanParser.INT, 0); }
		public ExprIntegerContext(ExpressionContext ctx) { copyFrom(ctx); }
	}
	public static class ExprReadContext extends ExpressionContext {
		public TerminalReadContext terminalRead() {
			return getRuleContext(TerminalReadContext.class,0);
		}
		public FileReadContext fileRead() {
			return getRuleContext(FileReadContext.class,0);
		}
		public ExprReadContext(ExpressionContext ctx) { copyFrom(ctx); }
	}
	public static class ExprStringContext extends ExpressionContext {
		public TerminalNode STRING() { return getToken(TabLanParser.STRING, 0); }
		public ExprStringContext(ExpressionContext ctx) { copyFrom(ctx); }
	}
	public static class ExprParentContext extends ExpressionContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ExprParentContext(ExpressionContext ctx) { copyFrom(ctx); }
	}
	public static class ExprIDContext extends ExpressionContext {
		public TerminalNode ID() { return getToken(TabLanParser.ID, 0); }
		public ExprIDContext(ExpressionContext ctx) { copyFrom(ctx); }
	}
	public static class ExprRealContext extends ExpressionContext {
		public TerminalNode REAL() { return getToken(TabLanParser.REAL, 0); }
		public ExprRealContext(ExpressionContext ctx) { copyFrom(ctx); }
	}
	public static class ExprCalcContext extends ExpressionContext {
		public Token op;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public ExprCalcContext(ExpressionContext ctx) { copyFrom(ctx); }
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
					if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__8) | (1L << T__9) | (1L << T__10) | (1L << T__11))) != 0)) ) {
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

	public static class TerminalReadContext extends ParserRuleContext {
		public TerminalNode STRING() { return getToken(TabLanParser.STRING, 0); }
		public TerminalReadContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_terminalRead; }
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

	public static class FileReadContext extends ParserRuleContext {
		public TerminalNode STRING() { return getToken(TabLanParser.STRING, 0); }
		public SpecialReadContext specialRead() {
			return getRuleContext(SpecialReadContext.class,0);
		}
		public FileReadContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_fileRead; }
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

	public static class RenameContext extends ParserRuleContext {
		public TerminalNode STRING() { return getToken(TabLanParser.STRING, 0); }
		public RenameContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_rename; }
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
			} while ( (((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__4) | (1L << T__6) | (1L << T__7) | (1L << T__12) | (1L << ID) | (1L << INT) | (1L << REAL) | (1L << STRING))) != 0) );
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

	public static class AssignExpressionContext extends ParserRuleContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public AssignExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_assignExpression; }
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
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__1) | (1L << T__2) | (1L << T__4) | (1L << T__6) | (1L << T__7) | (1L << T__12) | (1L << ID) | (1L << INT) | (1L << REAL) | (1L << STRING))) != 0)) {
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
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__1) | (1L << T__2) | (1L << T__23) | (1L << T__27) | (1L << T__30) | (1L << T__31) | (1L << T__32) | (1L << ID) | (1L << COMMENT))) != 0)) {
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
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3+\u00f9\4\2\t\2\4"+
		"\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13\t"+
		"\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\3\2\7\2(\n\2\f\2\16\2+\13\2\3\2\3\2\3\3\3\3\3\3\3\3\3\3\3\3"+
		"\3\3\3\3\5\3\67\n\3\3\4\3\4\3\4\3\4\5\4=\n\4\3\5\3\5\3\5\3\5\3\5\3\5\3"+
		"\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5\5\5P\n\5\3\5\3\5\3\5\5\5U\n"+
		"\5\3\5\3\5\5\5Y\n\5\3\5\3\5\3\5\7\5^\n\5\f\5\16\5a\13\5\3\6\3\6\5\6e\n"+
		"\6\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\7\7q\n\7\f\7\16\7t\13\7\3\7"+
		"\3\7\3\7\3\7\3\7\3\7\3\7\7\7}\n\7\f\7\16\7\u0080\13\7\5\7\u0082\n\7\3"+
		"\b\3\b\5\b\u0086\n\b\3\t\3\t\3\t\3\n\3\n\3\n\6\n\u008e\n\n\r\n\16\n\u008f"+
		"\3\n\3\n\3\13\3\13\3\13\3\f\3\f\3\f\3\f\3\f\3\r\3\r\3\r\3\r\3\r\3\r\3"+
		"\r\3\r\3\r\5\r\u00a5\n\r\3\r\3\r\3\16\3\16\3\16\5\16\u00ac\n\16\3\16\5"+
		"\16\u00af\n\16\3\16\3\16\3\16\3\17\3\17\3\17\3\17\5\17\u00b8\n\17\3\17"+
		"\3\17\7\17\u00bc\n\17\f\17\16\17\u00bf\13\17\3\17\3\17\3\17\3\20\3\20"+
		"\3\20\5\20\u00c7\n\20\3\20\3\20\3\20\3\21\3\21\3\21\5\21\u00cf\n\21\3"+
		"\21\3\21\3\21\5\21\u00d4\n\21\5\21\u00d6\n\21\3\21\3\21\3\21\3\21\3\21"+
		"\3\22\3\22\3\22\3\22\7\22\u00e1\n\22\f\22\16\22\u00e4\13\22\3\22\5\22"+
		"\u00e7\n\22\3\22\3\22\3\23\3\23\3\23\3\23\3\23\3\23\7\23\u00f1\n\23\f"+
		"\23\16\23\u00f4\13\23\3\23\3\23\3\23\3\23\2\3\b\24\2\4\6\b\n\f\16\20\22"+
		"\24\26\30\32\34\36 \"$\2\4\3\2\13\16\3\2!\"\2\u0110\2)\3\2\2\2\4\66\3"+
		"\2\2\2\6<\3\2\2\2\bX\3\2\2\2\nb\3\2\2\2\ff\3\2\2\2\16\u0083\3\2\2\2\20"+
		"\u0087\3\2\2\2\22\u008a\3\2\2\2\24\u0093\3\2\2\2\26\u0096\3\2\2\2\30\u009b"+
		"\3\2\2\2\32\u00ae\3\2\2\2\34\u00b3\3\2\2\2\36\u00c3\3\2\2\2 \u00cb\3\2"+
		"\2\2\"\u00dc\3\2\2\2$\u00ea\3\2\2\2&(\5\4\3\2\'&\3\2\2\2(+\3\2\2\2)\'"+
		"\3\2\2\2)*\3\2\2\2*,\3\2\2\2+)\3\2\2\2,-\7\2\2\3-\3\3\2\2\2.\67\5\30\r"+
		"\2/\67\5\32\16\2\60\67\5\34\17\2\61\67\5\36\20\2\62\67\5 \21\2\63\67\5"+
		"\"\22\2\64\67\5$\23\2\65\67\7*\2\2\66.\3\2\2\2\66/\3\2\2\2\66\60\3\2\2"+
		"\2\66\61\3\2\2\2\66\62\3\2\2\2\66\63\3\2\2\2\66\64\3\2\2\2\66\65\3\2\2"+
		"\2\67\5\3\2\2\28=\7\3\2\29=\7\4\2\2:=\7\5\2\2;=\7&\2\2<8\3\2\2\2<9\3\2"+
		"\2\2<:\3\2\2\2<;\3\2\2\2=\7\3\2\2\2>?\b\5\1\2?Y\7&\2\2@A\7&\2\2AB\7\6"+
		"\2\2BY\7&\2\2CY\7\'\2\2DY\7(\2\2EY\7)\2\2FG\7\7\2\2GH\5\b\5\2HI\7\b\2"+
		"\2IY\3\2\2\2JO\7\t\2\2KL\7\7\2\2LM\5\b\5\2MN\7\b\2\2NP\3\2\2\2OK\3\2\2"+
		"\2OP\3\2\2\2PY\3\2\2\2QT\7\n\2\2RU\5\n\6\2SU\5\16\b\2TR\3\2\2\2TS\3\2"+
		"\2\2UY\3\2\2\2VW\7\17\2\2WY\5\b\5\3X>\3\2\2\2X@\3\2\2\2XC\3\2\2\2XD\3"+
		"\2\2\2XE\3\2\2\2XF\3\2\2\2XJ\3\2\2\2XQ\3\2\2\2XV\3\2\2\2Y_\3\2\2\2Z[\f"+
		"\4\2\2[\\\t\2\2\2\\^\5\b\5\5]Z\3\2\2\2^a\3\2\2\2_]\3\2\2\2_`\3\2\2\2`"+
		"\t\3\2\2\2a_\3\2\2\2bd\7\20\2\2ce\7)\2\2dc\3\2\2\2de\3\2\2\2e\13\3\2\2"+
		"\2f\u0081\7\21\2\2gh\7\22\2\2hi\7\'\2\2ij\7\23\2\2jr\7&\2\2kl\7\24\2\2"+
		"lm\7\22\2\2mn\7\'\2\2no\7\23\2\2oq\7&\2\2pk\3\2\2\2qt\3\2\2\2rp\3\2\2"+
		"\2rs\3\2\2\2s\u0082\3\2\2\2tr\3\2\2\2uv\7)\2\2vw\7\23\2\2w~\7&\2\2xy\7"+
		"\24\2\2yz\7)\2\2z{\7\23\2\2{}\7&\2\2|x\3\2\2\2}\u0080\3\2\2\2~|\3\2\2"+
		"\2~\177\3\2\2\2\177\u0082\3\2\2\2\u0080~\3\2\2\2\u0081g\3\2\2\2\u0081"+
		"u\3\2\2\2\u0082\r\3\2\2\2\u0083\u0085\7)\2\2\u0084\u0086\5\f\7\2\u0085"+
		"\u0084\3\2\2\2\u0085\u0086\3\2\2\2\u0086\17\3\2\2\2\u0087\u0088\7\25\2"+
		"\2\u0088\u0089\7)\2\2\u0089\21\3\2\2\2\u008a\u008b\7\26\2\2\u008b\u008d"+
		"\7\7\2\2\u008c\u008e\5\b\5\2\u008d\u008c\3\2\2\2\u008e\u008f\3\2\2\2\u008f"+
		"\u008d\3\2\2\2\u008f\u0090\3\2\2\2\u0090\u0091\3\2\2\2\u0091\u0092\7\b"+
		"\2\2\u0092\23\3\2\2\2\u0093\u0094\7\27\2\2\u0094\u0095\5\b\5\2\u0095\25"+
		"\3\2\2\2\u0096\u0097\5\6\4\2\u0097\u0098\7\7\2\2\u0098\u0099\5\b\5\2\u0099"+
		"\u009a\7\b\2\2\u009a\27\3\2\2\2\u009b\u009c\7&\2\2\u009c\u009d\7\30\2"+
		"\2\u009d\u00a4\5\6\4\2\u009e\u009f\7\7\2\2\u009f\u00a0\5\b\5\2\u00a0\u00a1"+
		"\7\b\2\2\u00a1\u00a5\3\2\2\2\u00a2\u00a5\5\20\t\2\u00a3\u00a5\5\24\13"+
		"\2\u00a4\u009e\3\2\2\2\u00a4\u00a2\3\2\2\2\u00a4\u00a3\3\2\2\2\u00a4\u00a5"+
		"\3\2\2\2\u00a5\u00a6\3\2\2\2\u00a6\u00a7\7\31\2\2\u00a7\31\3\2\2\2\u00a8"+
		"\u00ab\7&\2\2\u00a9\u00aa\7\6\2\2\u00aa\u00ac\7&\2\2\u00ab\u00a9\3\2\2"+
		"\2\u00ab\u00ac\3\2\2\2\u00ac\u00af\3\2\2\2\u00ad\u00af\5\6\4\2\u00ae\u00a8"+
		"\3\2\2\2\u00ae\u00ad\3\2\2\2\u00af\u00b0\3\2\2\2\u00b0\u00b1\5\24\13\2"+
		"\u00b1\u00b2\7\31\2\2\u00b2\33\3\2\2\2\u00b3\u00b4\7\32\2\2\u00b4\u00b5"+
		"\7\33\2\2\u00b5\u00b7\7&\2\2\u00b6\u00b8\5\20\t\2\u00b7\u00b6\3\2\2\2"+
		"\u00b7\u00b8\3\2\2\2\u00b8\u00b9\3\2\2\2\u00b9\u00bd\7\34\2\2\u00ba\u00bc"+
		"\5\30\r\2\u00bb\u00ba\3\2\2\2\u00bc\u00bf\3\2\2\2\u00bd\u00bb\3\2\2\2"+
		"\u00bd\u00be\3\2\2\2\u00be\u00c0\3\2\2\2\u00bf\u00bd\3\2\2\2\u00c0\u00c1"+
		"\7\35\2\2\u00c1\u00c2\7\31\2\2\u00c2\35\3\2\2\2\u00c3\u00c6\7&\2\2\u00c4"+
		"\u00c5\7\6\2\2\u00c5\u00c7\7&\2\2\u00c6\u00c4\3\2\2\2\u00c6\u00c7\3\2"+
		"\2\2\u00c7\u00c8\3\2\2\2\u00c8\u00c9\5\20\t\2\u00c9\u00ca\7\31\2\2\u00ca"+
		"\37\3\2\2\2\u00cb\u00d5\7\36\2\2\u00cc\u00cf\5\b\5\2\u00cd\u00cf\5\26"+
		"\f\2\u00ce\u00cc\3\2\2\2\u00ce\u00cd\3\2\2\2\u00cf\u00d0\3\2\2\2\u00d0"+
		"\u00d3\7\24\2\2\u00d1\u00d4\5\b\5\2\u00d2\u00d4\5\26\f\2\u00d3\u00d1\3"+
		"\2\2\2\u00d3\u00d2\3\2\2\2\u00d4\u00d6\3\2\2\2\u00d5\u00ce\3\2\2\2\u00d5"+
		"\u00d6\3\2\2\2\u00d6\u00d7\3\2\2\2\u00d7\u00d8\7\37\2\2\u00d8\u00d9\7"+
		" \2\2\u00d9\u00da\7&\2\2\u00da\u00db\7\31\2\2\u00db!\3\2\2\2\u00dc\u00dd"+
		"\t\3\2\2\u00dd\u00e2\5\b\5\2\u00de\u00df\7\24\2\2\u00df\u00e1\5\b\5\2"+
		"\u00e0\u00de\3\2\2\2\u00e1\u00e4\3\2\2\2\u00e2\u00e0\3\2\2\2\u00e2\u00e3"+
		"\3\2\2\2\u00e3\u00e6\3\2\2\2\u00e4\u00e2\3\2\2\2\u00e5\u00e7\5\22\n\2"+
		"\u00e6\u00e5\3\2\2\2\u00e6\u00e7\3\2\2\2\u00e7\u00e8\3\2\2\2\u00e8\u00e9"+
		"\7\31\2\2\u00e9#\3\2\2\2\u00ea\u00eb\7#\2\2\u00eb\u00ec\7&\2\2\u00ec\u00ed"+
		"\7\20\2\2\u00ed\u00ee\7&\2\2\u00ee\u00f2\7$\2\2\u00ef\u00f1\5\4\3\2\u00f0"+
		"\u00ef\3\2\2\2\u00f1\u00f4\3\2\2\2\u00f2\u00f0\3\2\2\2\u00f2\u00f3\3\2"+
		"\2\2\u00f3\u00f5\3\2\2\2\u00f4\u00f2\3\2\2\2\u00f5\u00f6\7%\2\2\u00f6"+
		"\u00f7\7\31\2\2\u00f7%\3\2\2\2\33)\66<OTX_dr~\u0081\u0085\u008f\u00a4"+
		"\u00ab\u00ae\u00b7\u00bd\u00c6\u00ce\u00d3\u00d5\u00e2\u00e6\u00f2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}