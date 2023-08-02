// Generated from FigLan.g4 by ANTLR 4.12.0
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast", "CheckReturnValue"})
public class FigLanParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.12.0", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, T__14=15, T__15=16, T__16=17, 
		T__17=18, T__18=19, T__19=20, T__20=21, T__21=22, T__22=23, T__23=24, 
		T__24=25, T__25=26, T__26=27, T__27=28, T__28=29, T__29=30, ID=31, INT=32, 
		REAL=33, TEXT=34, EOL=35, WS=36, COMMENT=37, ERROR=38;
	public static final int
		RULE_program = 0, RULE_stat = 1, RULE_declare = 2, RULE_assign = 3, RULE_show = 4, 
		RULE_hide = 5, RULE_pause = 6, RULE_println = 7, RULE_print = 8, RULE_loop = 9, 
		RULE_expr = 10, RULE_point = 11, RULE_type = 12;
	private static String[] makeRuleNames() {
		return new String[] {
			"program", "stat", "declare", "assign", "show", "hide", "pause", "println", 
			"print", "loop", "expr", "point", "type"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "','", "'='", "'+'", "'-'", "'show'", "'all'", "'hide'", "'pause'", 
			"'println'", "'print'", "'for'", "'to'", "'do'", "'end'", "'new'", "'circle'", 
			"'('", "')'", "'|'", "'line'", "'*'", "'/'", "'read'", "'['", "']'", 
			"'point'", "'figure'", "'integer'", "'real'", "'text'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, "ID", "INT", "REAL", "TEXT", 
			"EOL", "WS", "COMMENT", "ERROR"
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
	public String getGrammarFileName() { return "FigLan.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public FigLanParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ProgramContext extends ParserRuleContext {
		public TerminalNode EOF() { return getToken(FigLanParser.EOF, 0); }
		public List<StatContext> stat() {
			return getRuleContexts(StatContext.class);
		}
		public StatContext stat(int i) {
			return getRuleContext(StatContext.class,i);
		}
		public ProgramContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_program; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).enterProgram(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).exitProgram(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof FigLanVisitor ) return ((FigLanVisitor<? extends T>)visitor).visitProgram(this);
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
			setState(29);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & 38588714912L) != 0)) {
				{
				{
				setState(26);
				stat();
				}
				}
				setState(31);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(32);
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
	public static class StatContext extends ParserRuleContext {
		public TerminalNode EOL() { return getToken(FigLanParser.EOL, 0); }
		public DeclareContext declare() {
			return getRuleContext(DeclareContext.class,0);
		}
		public AssignContext assign() {
			return getRuleContext(AssignContext.class,0);
		}
		public ShowContext show() {
			return getRuleContext(ShowContext.class,0);
		}
		public HideContext hide() {
			return getRuleContext(HideContext.class,0);
		}
		public PrintContext print() {
			return getRuleContext(PrintContext.class,0);
		}
		public PrintlnContext println() {
			return getRuleContext(PrintlnContext.class,0);
		}
		public PauseContext pause() {
			return getRuleContext(PauseContext.class,0);
		}
		public LoopContext loop() {
			return getRuleContext(LoopContext.class,0);
		}
		public StatContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_stat; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).enterStat(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).exitStat(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof FigLanVisitor ) return ((FigLanVisitor<? extends T>)visitor).visitStat(this);
			else return visitor.visitChildren(this);
		}
	}

	public final StatContext stat() throws RecognitionException {
		StatContext _localctx = new StatContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_stat);
		try {
			setState(45);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__4:
			case T__6:
			case T__7:
			case T__8:
			case T__9:
			case T__15:
			case T__19:
			case T__25:
			case T__26:
			case T__27:
			case T__28:
			case T__29:
			case ID:
			case EOL:
				enterOuterAlt(_localctx, 1);
				{
				{
				setState(41);
				_errHandler.sync(this);
				switch (_input.LA(1)) {
				case T__15:
				case T__19:
				case T__25:
				case T__26:
				case T__27:
				case T__28:
				case T__29:
					{
					setState(34);
					declare();
					}
					break;
				case ID:
					{
					setState(35);
					assign();
					}
					break;
				case T__4:
					{
					setState(36);
					show();
					}
					break;
				case T__6:
					{
					setState(37);
					hide();
					}
					break;
				case T__9:
					{
					setState(38);
					print();
					}
					break;
				case T__8:
					{
					setState(39);
					println();
					}
					break;
				case T__7:
					{
					setState(40);
					pause();
					}
					break;
				case EOL:
					break;
				default:
					break;
				}
				setState(43);
				match(EOL);
				}
				}
				break;
			case T__10:
				enterOuterAlt(_localctx, 2);
				{
				setState(44);
				loop();
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
	public static class DeclareContext extends ParserRuleContext {
		public DeclareContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_declare; }
	 
		public DeclareContext() { }
		public void copyFrom(DeclareContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class DeclareAssignStructContext extends DeclareContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public TerminalNode ID() { return getToken(FigLanParser.ID, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public DeclareAssignStructContext(DeclareContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).enterDeclareAssignStruct(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).exitDeclareAssignStruct(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof FigLanVisitor ) return ((FigLanVisitor<? extends T>)visitor).visitDeclareAssignStruct(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class DeclareStructContext extends DeclareContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public List<TerminalNode> ID() { return getTokens(FigLanParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(FigLanParser.ID, i);
		}
		public DeclareStructContext(DeclareContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).enterDeclareStruct(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).exitDeclareStruct(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof FigLanVisitor ) return ((FigLanVisitor<? extends T>)visitor).visitDeclareStruct(this);
			else return visitor.visitChildren(this);
		}
	}

	public final DeclareContext declare() throws RecognitionException {
		DeclareContext _localctx = new DeclareContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_declare);
		int _la;
		try {
			setState(61);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,4,_ctx) ) {
			case 1:
				_localctx = new DeclareStructContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(47);
				type();
				setState(48);
				match(ID);
				setState(53);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==T__0) {
					{
					{
					setState(49);
					match(T__0);
					setState(50);
					match(ID);
					}
					}
					setState(55);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
				break;
			case 2:
				_localctx = new DeclareAssignStructContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(56);
				type();
				setState(57);
				match(ID);
				setState(58);
				match(T__1);
				setState(59);
				expr(0);
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
	public static class AssignContext extends ParserRuleContext {
		public String var = null;
		public AssignContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_assign; }
	 
		public AssignContext() { }
		public void copyFrom(AssignContext ctx) {
			super.copyFrom(ctx);
			this.var = ctx.var;
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class AssignStructContext extends AssignContext {
		public TerminalNode ID() { return getToken(FigLanParser.ID, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public AssignStructContext(AssignContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).enterAssignStruct(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).exitAssignStruct(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof FigLanVisitor ) return ((FigLanVisitor<? extends T>)visitor).visitAssignStruct(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class AssignAddSubContext extends AssignContext {
		public Token op;
		public TerminalNode ID() { return getToken(FigLanParser.ID, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public AssignAddSubContext(AssignContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).enterAssignAddSub(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).exitAssignAddSub(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof FigLanVisitor ) return ((FigLanVisitor<? extends T>)visitor).visitAssignAddSub(this);
			else return visitor.visitChildren(this);
		}
	}

	public final AssignContext assign() throws RecognitionException {
		AssignContext _localctx = new AssignContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_assign);
		int _la;
		try {
			setState(70);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,5,_ctx) ) {
			case 1:
				_localctx = new AssignStructContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(63);
				match(ID);
				setState(64);
				match(T__1);
				setState(65);
				expr(0);
				}
				break;
			case 2:
				_localctx = new AssignAddSubContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(66);
				match(ID);
				setState(67);
				((AssignAddSubContext)_localctx).op = _input.LT(1);
				_la = _input.LA(1);
				if ( !(_la==T__2 || _la==T__3) ) {
					((AssignAddSubContext)_localctx).op = (Token)_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(68);
				match(T__1);
				setState(69);
				expr(0);
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
	public static class ShowContext extends ParserRuleContext {
		public ShowContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_show; }
	 
		public ShowContext() { }
		public void copyFrom(ShowContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ShowAllContext extends ShowContext {
		public ShowAllContext(ShowContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).enterShowAll(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).exitShowAll(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof FigLanVisitor ) return ((FigLanVisitor<? extends T>)visitor).visitShowAll(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ShowIDContext extends ShowContext {
		public List<TerminalNode> ID() { return getTokens(FigLanParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(FigLanParser.ID, i);
		}
		public ShowIDContext(ShowContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).enterShowID(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).exitShowID(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof FigLanVisitor ) return ((FigLanVisitor<? extends T>)visitor).visitShowID(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ShowConstructorContext extends ShowContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ShowConstructorContext(ShowContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).enterShowConstructor(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).exitShowConstructor(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof FigLanVisitor ) return ((FigLanVisitor<? extends T>)visitor).visitShowConstructor(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ShowContext show() throws RecognitionException {
		ShowContext _localctx = new ShowContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_show);
		int _la;
		try {
			setState(85);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,7,_ctx) ) {
			case 1:
				_localctx = new ShowAllContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(72);
				match(T__4);
				setState(73);
				match(T__5);
				}
				break;
			case 2:
				_localctx = new ShowIDContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(74);
				match(T__4);
				{
				setState(75);
				match(ID);
				setState(80);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==T__0) {
					{
					{
					setState(76);
					match(T__0);
					setState(77);
					match(ID);
					}
					}
					setState(82);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
				}
				break;
			case 3:
				_localctx = new ShowConstructorContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(83);
				match(T__4);
				setState(84);
				expr(0);
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
	public static class HideContext extends ParserRuleContext {
		public HideContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_hide; }
	 
		public HideContext() { }
		public void copyFrom(HideContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class HideIDContext extends HideContext {
		public List<TerminalNode> ID() { return getTokens(FigLanParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(FigLanParser.ID, i);
		}
		public HideIDContext(HideContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).enterHideID(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).exitHideID(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof FigLanVisitor ) return ((FigLanVisitor<? extends T>)visitor).visitHideID(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class HideAllContext extends HideContext {
		public HideAllContext(HideContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).enterHideAll(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).exitHideAll(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof FigLanVisitor ) return ((FigLanVisitor<? extends T>)visitor).visitHideAll(this);
			else return visitor.visitChildren(this);
		}
	}

	public final HideContext hide() throws RecognitionException {
		HideContext _localctx = new HideContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_hide);
		int _la;
		try {
			setState(98);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,9,_ctx) ) {
			case 1:
				_localctx = new HideAllContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(87);
				match(T__6);
				setState(88);
				match(T__5);
				}
				break;
			case 2:
				_localctx = new HideIDContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(89);
				match(T__6);
				{
				setState(90);
				match(ID);
				setState(95);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==T__0) {
					{
					{
					setState(91);
					match(T__0);
					setState(92);
					match(ID);
					}
					}
					setState(97);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
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
	public static class PauseContext extends ParserRuleContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public PauseContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_pause; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).enterPause(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).exitPause(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof FigLanVisitor ) return ((FigLanVisitor<? extends T>)visitor).visitPause(this);
			else return visitor.visitChildren(this);
		}
	}

	public final PauseContext pause() throws RecognitionException {
		PauseContext _localctx = new PauseContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_pause);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(100);
			match(T__7);
			setState(101);
			expr(0);
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
	public static class PrintlnContext extends ParserRuleContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public PrintlnContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_println; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).enterPrintln(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).exitPrintln(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof FigLanVisitor ) return ((FigLanVisitor<? extends T>)visitor).visitPrintln(this);
			else return visitor.visitChildren(this);
		}
	}

	public final PrintlnContext println() throws RecognitionException {
		PrintlnContext _localctx = new PrintlnContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_println);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(103);
			match(T__8);
			setState(104);
			expr(0);
			setState(109);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__0) {
				{
				{
				setState(105);
				match(T__0);
				setState(106);
				expr(0);
				}
				}
				setState(111);
				_errHandler.sync(this);
				_la = _input.LA(1);
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
	public static class PrintContext extends ParserRuleContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public PrintContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_print; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).enterPrint(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).exitPrint(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof FigLanVisitor ) return ((FigLanVisitor<? extends T>)visitor).visitPrint(this);
			else return visitor.visitChildren(this);
		}
	}

	public final PrintContext print() throws RecognitionException {
		PrintContext _localctx = new PrintContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_print);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(112);
			match(T__9);
			setState(113);
			expr(0);
			setState(118);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__0) {
				{
				{
				setState(114);
				match(T__0);
				setState(115);
				expr(0);
				}
				}
				setState(120);
				_errHandler.sync(this);
				_la = _input.LA(1);
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
	public static class LoopContext extends ParserRuleContext {
		public AssignContext assign() {
			return getRuleContext(AssignContext.class,0);
		}
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public List<StatContext> stat() {
			return getRuleContexts(StatContext.class);
		}
		public StatContext stat(int i) {
			return getRuleContext(StatContext.class,i);
		}
		public LoopContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_loop; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).enterLoop(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).exitLoop(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof FigLanVisitor ) return ((FigLanVisitor<? extends T>)visitor).visitLoop(this);
			else return visitor.visitChildren(this);
		}
	}

	public final LoopContext loop() throws RecognitionException {
		LoopContext _localctx = new LoopContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_loop);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(121);
			match(T__10);
			setState(122);
			assign();
			setState(123);
			match(T__11);
			setState(124);
			expr(0);
			setState(125);
			match(T__12);
			setState(129);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & 38588714912L) != 0)) {
				{
				{
				setState(126);
				stat();
				}
				}
				setState(131);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(132);
			match(T__13);
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
	public static class ExprContext extends ParserRuleContext {
		public String var = null;
		public ExprContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expr; }
	 
		public ExprContext() { }
		public void copyFrom(ExprContext ctx) {
			super.copyFrom(ctx);
			this.var = ctx.var;
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ConstructLineContext extends ExprContext {
		public List<PointContext> point() {
			return getRuleContexts(PointContext.class);
		}
		public PointContext point(int i) {
			return getRuleContext(PointContext.class,i);
		}
		public ConstructLineContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).enterConstructLine(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).exitConstructLine(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof FigLanVisitor ) return ((FigLanVisitor<? extends T>)visitor).visitConstructLine(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ConstructCircleContext extends ExprContext {
		public PointContext point() {
			return getRuleContext(PointContext.class,0);
		}
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ConstructCircleContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).enterConstructCircle(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).exitConstructCircle(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof FigLanVisitor ) return ((FigLanVisitor<? extends T>)visitor).visitConstructCircle(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprReadContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ExprReadContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).enterExprRead(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).exitExprRead(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof FigLanVisitor ) return ((FigLanVisitor<? extends T>)visitor).visitExprRead(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprParentContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ExprParentContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).enterExprParent(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).exitExprParent(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof FigLanVisitor ) return ((FigLanVisitor<? extends T>)visitor).visitExprParent(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprConvertContext extends ExprContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ExprConvertContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).enterExprConvert(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).exitExprConvert(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof FigLanVisitor ) return ((FigLanVisitor<? extends T>)visitor).visitExprConvert(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprIntContext extends ExprContext {
		public TerminalNode INT() { return getToken(FigLanParser.INT, 0); }
		public ExprIntContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).enterExprInt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).exitExprInt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof FigLanVisitor ) return ((FigLanVisitor<? extends T>)visitor).visitExprInt(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprTextContext extends ExprContext {
		public TerminalNode TEXT() { return getToken(FigLanParser.TEXT, 0); }
		public ExprTextContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).enterExprText(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).exitExprText(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof FigLanVisitor ) return ((FigLanVisitor<? extends T>)visitor).visitExprText(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprAddSubContext extends ExprContext {
		public ExprContext e1;
		public Token op;
		public ExprContext e2;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public ExprAddSubContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).enterExprAddSub(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).exitExprAddSub(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof FigLanVisitor ) return ((FigLanVisitor<? extends T>)visitor).visitExprAddSub(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ConstructPointContext extends ExprContext {
		public PointContext point() {
			return getRuleContext(PointContext.class,0);
		}
		public ConstructPointContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).enterConstructPoint(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).exitConstructPoint(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof FigLanVisitor ) return ((FigLanVisitor<? extends T>)visitor).visitConstructPoint(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprMultDivContext extends ExprContext {
		public ExprContext e1;
		public Token op;
		public ExprContext e2;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public ExprMultDivContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).enterExprMultDiv(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).exitExprMultDiv(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof FigLanVisitor ) return ((FigLanVisitor<? extends T>)visitor).visitExprMultDiv(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprSignContext extends ExprContext {
		public Token op;
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ExprSignContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).enterExprSign(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).exitExprSign(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof FigLanVisitor ) return ((FigLanVisitor<? extends T>)visitor).visitExprSign(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprRealContext extends ExprContext {
		public TerminalNode REAL() { return getToken(FigLanParser.REAL, 0); }
		public ExprRealContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).enterExprReal(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).exitExprReal(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof FigLanVisitor ) return ((FigLanVisitor<? extends T>)visitor).visitExprReal(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprIDContext extends ExprContext {
		public TerminalNode ID() { return getToken(FigLanParser.ID, 0); }
		public ExprIDContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).enterExprID(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).exitExprID(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof FigLanVisitor ) return ((FigLanVisitor<? extends T>)visitor).visitExprID(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ExprContext expr() throws RecognitionException {
		return expr(0);
	}

	private ExprContext expr(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		ExprContext _localctx = new ExprContext(_ctx, _parentState);
		ExprContext _prevctx = _localctx;
		int _startState = 20;
		enterRecursionRule(_localctx, 20, RULE_expr, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(178);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,13,_ctx) ) {
			case 1:
				{
				_localctx = new ConstructCircleContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(135);
				match(T__14);
				setState(136);
				match(T__15);
				setState(137);
				match(T__16);
				setState(138);
				point();
				setState(139);
				match(T__0);
				setState(140);
				expr(0);
				setState(141);
				match(T__17);
				}
				break;
			case 2:
				{
				_localctx = new ConstructCircleContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(143);
				point();
				setState(144);
				match(T__18);
				setState(145);
				expr(14);
				}
				break;
			case 3:
				{
				_localctx = new ConstructLineContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(147);
				match(T__14);
				setState(148);
				match(T__19);
				setState(149);
				match(T__16);
				setState(150);
				point();
				setState(151);
				match(T__0);
				setState(152);
				point();
				setState(153);
				match(T__17);
				}
				break;
			case 4:
				{
				_localctx = new ConstructLineContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(155);
				point();
				setState(156);
				match(T__3);
				setState(157);
				match(T__3);
				setState(158);
				point();
				}
				break;
			case 5:
				{
				_localctx = new ExprParentContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(160);
				match(T__16);
				setState(161);
				expr(0);
				setState(162);
				match(T__17);
				}
				break;
			case 6:
				{
				_localctx = new ExprSignContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(164);
				((ExprSignContext)_localctx).op = _input.LT(1);
				_la = _input.LA(1);
				if ( !(_la==T__2 || _la==T__3) ) {
					((ExprSignContext)_localctx).op = (Token)_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(165);
				expr(10);
				}
				break;
			case 7:
				{
				_localctx = new ExprReadContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(166);
				match(T__22);
				setState(167);
				expr(7);
				}
				break;
			case 8:
				{
				_localctx = new ExprConvertContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(168);
				type();
				setState(169);
				match(T__16);
				setState(170);
				expr(0);
				setState(171);
				match(T__17);
				}
				break;
			case 9:
				{
				_localctx = new ExprIDContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(173);
				match(ID);
				}
				break;
			case 10:
				{
				_localctx = new ExprRealContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(174);
				match(REAL);
				}
				break;
			case 11:
				{
				_localctx = new ExprIntContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(175);
				match(INT);
				}
				break;
			case 12:
				{
				_localctx = new ExprTextContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(176);
				match(TEXT);
				}
				break;
			case 13:
				{
				_localctx = new ConstructPointContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(177);
				point();
				}
				break;
			}
			_ctx.stop = _input.LT(-1);
			setState(188);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,15,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(186);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,14,_ctx) ) {
					case 1:
						{
						_localctx = new ExprAddSubContext(new ExprContext(_parentctx, _parentState));
						((ExprAddSubContext)_localctx).e1 = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(180);
						if (!(precpred(_ctx, 9))) throw new FailedPredicateException(this, "precpred(_ctx, 9)");
						setState(181);
						((ExprAddSubContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__2 || _la==T__3) ) {
							((ExprAddSubContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(182);
						((ExprAddSubContext)_localctx).e2 = expr(10);
						}
						break;
					case 2:
						{
						_localctx = new ExprMultDivContext(new ExprContext(_parentctx, _parentState));
						((ExprMultDivContext)_localctx).e1 = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(183);
						if (!(precpred(_ctx, 8))) throw new FailedPredicateException(this, "precpred(_ctx, 8)");
						setState(184);
						((ExprMultDivContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__20 || _la==T__21) ) {
							((ExprMultDivContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(185);
						((ExprMultDivContext)_localctx).e2 = expr(9);
						}
						break;
					}
					} 
				}
				setState(190);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,15,_ctx);
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
	public static class PointContext extends ParserRuleContext {
		public PointContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_point; }
	 
		public PointContext() { }
		public void copyFrom(PointContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class PointStructureContext extends PointContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public PointStructureContext(PointContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).enterPointStructure(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).exitPointStructure(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof FigLanVisitor ) return ((FigLanVisitor<? extends T>)visitor).visitPointStructure(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class PointIDContext extends PointContext {
		public TerminalNode ID() { return getToken(FigLanParser.ID, 0); }
		public PointIDContext(PointContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).enterPointID(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).exitPointID(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof FigLanVisitor ) return ((FigLanVisitor<? extends T>)visitor).visitPointID(this);
			else return visitor.visitChildren(this);
		}
	}

	public final PointContext point() throws RecognitionException {
		PointContext _localctx = new PointContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_point);
		try {
			setState(198);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__23:
				_localctx = new PointStructureContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(191);
				match(T__23);
				setState(192);
				expr(0);
				setState(193);
				match(T__0);
				setState(194);
				expr(0);
				setState(195);
				match(T__24);
				}
				break;
			case ID:
				_localctx = new PointIDContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(197);
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
	public static class TypeContext extends ParserRuleContext {
		public TypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_type; }
	 
		public TypeContext() { }
		public void copyFrom(TypeContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class TypeCircleContext extends TypeContext {
		public TypeCircleContext(TypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).enterTypeCircle(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).exitTypeCircle(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof FigLanVisitor ) return ((FigLanVisitor<? extends T>)visitor).visitTypeCircle(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class TypeLineContext extends TypeContext {
		public TypeLineContext(TypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).enterTypeLine(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).exitTypeLine(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof FigLanVisitor ) return ((FigLanVisitor<? extends T>)visitor).visitTypeLine(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class TypeRealContext extends TypeContext {
		public TypeRealContext(TypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).enterTypeReal(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).exitTypeReal(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof FigLanVisitor ) return ((FigLanVisitor<? extends T>)visitor).visitTypeReal(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class TypeTextContext extends TypeContext {
		public TypeTextContext(TypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).enterTypeText(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).exitTypeText(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof FigLanVisitor ) return ((FigLanVisitor<? extends T>)visitor).visitTypeText(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class TypeIntegerContext extends TypeContext {
		public TypeIntegerContext(TypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).enterTypeInteger(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).exitTypeInteger(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof FigLanVisitor ) return ((FigLanVisitor<? extends T>)visitor).visitTypeInteger(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class TypePointContext extends TypeContext {
		public TypePointContext(TypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).enterTypePoint(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).exitTypePoint(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof FigLanVisitor ) return ((FigLanVisitor<? extends T>)visitor).visitTypePoint(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class TypeFigureContext extends TypeContext {
		public TypeFigureContext(TypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).enterTypeFigure(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof FigLanListener ) ((FigLanListener)listener).exitTypeFigure(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof FigLanVisitor ) return ((FigLanVisitor<? extends T>)visitor).visitTypeFigure(this);
			else return visitor.visitChildren(this);
		}
	}

	public final TypeContext type() throws RecognitionException {
		TypeContext _localctx = new TypeContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_type);
		try {
			setState(207);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__25:
				_localctx = new TypePointContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(200);
				match(T__25);
				}
				break;
			case T__19:
				_localctx = new TypeLineContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(201);
				match(T__19);
				}
				break;
			case T__15:
				_localctx = new TypeCircleContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(202);
				match(T__15);
				}
				break;
			case T__26:
				_localctx = new TypeFigureContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(203);
				match(T__26);
				}
				break;
			case T__27:
				_localctx = new TypeIntegerContext(_localctx);
				enterOuterAlt(_localctx, 5);
				{
				setState(204);
				match(T__27);
				}
				break;
			case T__28:
				_localctx = new TypeRealContext(_localctx);
				enterOuterAlt(_localctx, 6);
				{
				setState(205);
				match(T__28);
				}
				break;
			case T__29:
				_localctx = new TypeTextContext(_localctx);
				enterOuterAlt(_localctx, 7);
				{
				setState(206);
				match(T__29);
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

	public boolean sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
		switch (ruleIndex) {
		case 10:
			return expr_sempred((ExprContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean expr_sempred(ExprContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 9);
		case 1:
			return precpred(_ctx, 8);
		}
		return true;
	}

	public static final String _serializedATN =
		"\u0004\u0001&\u00d2\u0002\u0000\u0007\u0000\u0002\u0001\u0007\u0001\u0002"+
		"\u0002\u0007\u0002\u0002\u0003\u0007\u0003\u0002\u0004\u0007\u0004\u0002"+
		"\u0005\u0007\u0005\u0002\u0006\u0007\u0006\u0002\u0007\u0007\u0007\u0002"+
		"\b\u0007\b\u0002\t\u0007\t\u0002\n\u0007\n\u0002\u000b\u0007\u000b\u0002"+
		"\f\u0007\f\u0001\u0000\u0005\u0000\u001c\b\u0000\n\u0000\f\u0000\u001f"+
		"\t\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001"+
		"\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0003\u0001*\b\u0001\u0001"+
		"\u0001\u0001\u0001\u0003\u0001.\b\u0001\u0001\u0002\u0001\u0002\u0001"+
		"\u0002\u0001\u0002\u0005\u00024\b\u0002\n\u0002\f\u00027\t\u0002\u0001"+
		"\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0003\u0002>\b"+
		"\u0002\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001"+
		"\u0003\u0001\u0003\u0003\u0003G\b\u0003\u0001\u0004\u0001\u0004\u0001"+
		"\u0004\u0001\u0004\u0001\u0004\u0001\u0004\u0005\u0004O\b\u0004\n\u0004"+
		"\f\u0004R\t\u0004\u0001\u0004\u0001\u0004\u0003\u0004V\b\u0004\u0001\u0005"+
		"\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0005\u0005"+
		"^\b\u0005\n\u0005\f\u0005a\t\u0005\u0003\u0005c\b\u0005\u0001\u0006\u0001"+
		"\u0006\u0001\u0006\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0005"+
		"\u0007l\b\u0007\n\u0007\f\u0007o\t\u0007\u0001\b\u0001\b\u0001\b\u0001"+
		"\b\u0005\bu\b\b\n\b\f\bx\t\b\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001"+
		"\t\u0005\t\u0080\b\t\n\t\f\t\u0083\t\t\u0001\t\u0001\t\u0001\n\u0001\n"+
		"\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001"+
		"\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001"+
		"\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001"+
		"\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001"+
		"\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0003\n\u00b3\b\n\u0001"+
		"\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0005\n\u00bb\b\n\n\n\f\n\u00be"+
		"\t\n\u0001\u000b\u0001\u000b\u0001\u000b\u0001\u000b\u0001\u000b\u0001"+
		"\u000b\u0001\u000b\u0003\u000b\u00c7\b\u000b\u0001\f\u0001\f\u0001\f\u0001"+
		"\f\u0001\f\u0001\f\u0001\f\u0003\f\u00d0\b\f\u0001\f\u0000\u0001\u0014"+
		"\r\u0000\u0002\u0004\u0006\b\n\f\u000e\u0010\u0012\u0014\u0016\u0018\u0000"+
		"\u0002\u0001\u0000\u0003\u0004\u0001\u0000\u0015\u0016\u00ed\u0000\u001d"+
		"\u0001\u0000\u0000\u0000\u0002-\u0001\u0000\u0000\u0000\u0004=\u0001\u0000"+
		"\u0000\u0000\u0006F\u0001\u0000\u0000\u0000\bU\u0001\u0000\u0000\u0000"+
		"\nb\u0001\u0000\u0000\u0000\fd\u0001\u0000\u0000\u0000\u000eg\u0001\u0000"+
		"\u0000\u0000\u0010p\u0001\u0000\u0000\u0000\u0012y\u0001\u0000\u0000\u0000"+
		"\u0014\u00b2\u0001\u0000\u0000\u0000\u0016\u00c6\u0001\u0000\u0000\u0000"+
		"\u0018\u00cf\u0001\u0000\u0000\u0000\u001a\u001c\u0003\u0002\u0001\u0000"+
		"\u001b\u001a\u0001\u0000\u0000\u0000\u001c\u001f\u0001\u0000\u0000\u0000"+
		"\u001d\u001b\u0001\u0000\u0000\u0000\u001d\u001e\u0001\u0000\u0000\u0000"+
		"\u001e \u0001\u0000\u0000\u0000\u001f\u001d\u0001\u0000\u0000\u0000 !"+
		"\u0005\u0000\u0000\u0001!\u0001\u0001\u0000\u0000\u0000\"*\u0003\u0004"+
		"\u0002\u0000#*\u0003\u0006\u0003\u0000$*\u0003\b\u0004\u0000%*\u0003\n"+
		"\u0005\u0000&*\u0003\u0010\b\u0000\'*\u0003\u000e\u0007\u0000(*\u0003"+
		"\f\u0006\u0000)\"\u0001\u0000\u0000\u0000)#\u0001\u0000\u0000\u0000)$"+
		"\u0001\u0000\u0000\u0000)%\u0001\u0000\u0000\u0000)&\u0001\u0000\u0000"+
		"\u0000)\'\u0001\u0000\u0000\u0000)(\u0001\u0000\u0000\u0000)*\u0001\u0000"+
		"\u0000\u0000*+\u0001\u0000\u0000\u0000+.\u0005#\u0000\u0000,.\u0003\u0012"+
		"\t\u0000-)\u0001\u0000\u0000\u0000-,\u0001\u0000\u0000\u0000.\u0003\u0001"+
		"\u0000\u0000\u0000/0\u0003\u0018\f\u000005\u0005\u001f\u0000\u000012\u0005"+
		"\u0001\u0000\u000024\u0005\u001f\u0000\u000031\u0001\u0000\u0000\u0000"+
		"47\u0001\u0000\u0000\u000053\u0001\u0000\u0000\u000056\u0001\u0000\u0000"+
		"\u00006>\u0001\u0000\u0000\u000075\u0001\u0000\u0000\u000089\u0003\u0018"+
		"\f\u00009:\u0005\u001f\u0000\u0000:;\u0005\u0002\u0000\u0000;<\u0003\u0014"+
		"\n\u0000<>\u0001\u0000\u0000\u0000=/\u0001\u0000\u0000\u0000=8\u0001\u0000"+
		"\u0000\u0000>\u0005\u0001\u0000\u0000\u0000?@\u0005\u001f\u0000\u0000"+
		"@A\u0005\u0002\u0000\u0000AG\u0003\u0014\n\u0000BC\u0005\u001f\u0000\u0000"+
		"CD\u0007\u0000\u0000\u0000DE\u0005\u0002\u0000\u0000EG\u0003\u0014\n\u0000"+
		"F?\u0001\u0000\u0000\u0000FB\u0001\u0000\u0000\u0000G\u0007\u0001\u0000"+
		"\u0000\u0000HI\u0005\u0005\u0000\u0000IV\u0005\u0006\u0000\u0000JK\u0005"+
		"\u0005\u0000\u0000KP\u0005\u001f\u0000\u0000LM\u0005\u0001\u0000\u0000"+
		"MO\u0005\u001f\u0000\u0000NL\u0001\u0000\u0000\u0000OR\u0001\u0000\u0000"+
		"\u0000PN\u0001\u0000\u0000\u0000PQ\u0001\u0000\u0000\u0000QV\u0001\u0000"+
		"\u0000\u0000RP\u0001\u0000\u0000\u0000ST\u0005\u0005\u0000\u0000TV\u0003"+
		"\u0014\n\u0000UH\u0001\u0000\u0000\u0000UJ\u0001\u0000\u0000\u0000US\u0001"+
		"\u0000\u0000\u0000V\t\u0001\u0000\u0000\u0000WX\u0005\u0007\u0000\u0000"+
		"Xc\u0005\u0006\u0000\u0000YZ\u0005\u0007\u0000\u0000Z_\u0005\u001f\u0000"+
		"\u0000[\\\u0005\u0001\u0000\u0000\\^\u0005\u001f\u0000\u0000][\u0001\u0000"+
		"\u0000\u0000^a\u0001\u0000\u0000\u0000_]\u0001\u0000\u0000\u0000_`\u0001"+
		"\u0000\u0000\u0000`c\u0001\u0000\u0000\u0000a_\u0001\u0000\u0000\u0000"+
		"bW\u0001\u0000\u0000\u0000bY\u0001\u0000\u0000\u0000c\u000b\u0001\u0000"+
		"\u0000\u0000de\u0005\b\u0000\u0000ef\u0003\u0014\n\u0000f\r\u0001\u0000"+
		"\u0000\u0000gh\u0005\t\u0000\u0000hm\u0003\u0014\n\u0000ij\u0005\u0001"+
		"\u0000\u0000jl\u0003\u0014\n\u0000ki\u0001\u0000\u0000\u0000lo\u0001\u0000"+
		"\u0000\u0000mk\u0001\u0000\u0000\u0000mn\u0001\u0000\u0000\u0000n\u000f"+
		"\u0001\u0000\u0000\u0000om\u0001\u0000\u0000\u0000pq\u0005\n\u0000\u0000"+
		"qv\u0003\u0014\n\u0000rs\u0005\u0001\u0000\u0000su\u0003\u0014\n\u0000"+
		"tr\u0001\u0000\u0000\u0000ux\u0001\u0000\u0000\u0000vt\u0001\u0000\u0000"+
		"\u0000vw\u0001\u0000\u0000\u0000w\u0011\u0001\u0000\u0000\u0000xv\u0001"+
		"\u0000\u0000\u0000yz\u0005\u000b\u0000\u0000z{\u0003\u0006\u0003\u0000"+
		"{|\u0005\f\u0000\u0000|}\u0003\u0014\n\u0000}\u0081\u0005\r\u0000\u0000"+
		"~\u0080\u0003\u0002\u0001\u0000\u007f~\u0001\u0000\u0000\u0000\u0080\u0083"+
		"\u0001\u0000\u0000\u0000\u0081\u007f\u0001\u0000\u0000\u0000\u0081\u0082"+
		"\u0001\u0000\u0000\u0000\u0082\u0084\u0001\u0000\u0000\u0000\u0083\u0081"+
		"\u0001\u0000\u0000\u0000\u0084\u0085\u0005\u000e\u0000\u0000\u0085\u0013"+
		"\u0001\u0000\u0000\u0000\u0086\u0087\u0006\n\uffff\uffff\u0000\u0087\u0088"+
		"\u0005\u000f\u0000\u0000\u0088\u0089\u0005\u0010\u0000\u0000\u0089\u008a"+
		"\u0005\u0011\u0000\u0000\u008a\u008b\u0003\u0016\u000b\u0000\u008b\u008c"+
		"\u0005\u0001\u0000\u0000\u008c\u008d\u0003\u0014\n\u0000\u008d\u008e\u0005"+
		"\u0012\u0000\u0000\u008e\u00b3\u0001\u0000\u0000\u0000\u008f\u0090\u0003"+
		"\u0016\u000b\u0000\u0090\u0091\u0005\u0013\u0000\u0000\u0091\u0092\u0003"+
		"\u0014\n\u000e\u0092\u00b3\u0001\u0000\u0000\u0000\u0093\u0094\u0005\u000f"+
		"\u0000\u0000\u0094\u0095\u0005\u0014\u0000\u0000\u0095\u0096\u0005\u0011"+
		"\u0000\u0000\u0096\u0097\u0003\u0016\u000b\u0000\u0097\u0098\u0005\u0001"+
		"\u0000\u0000\u0098\u0099\u0003\u0016\u000b\u0000\u0099\u009a\u0005\u0012"+
		"\u0000\u0000\u009a\u00b3\u0001\u0000\u0000\u0000\u009b\u009c\u0003\u0016"+
		"\u000b\u0000\u009c\u009d\u0005\u0004\u0000\u0000\u009d\u009e\u0005\u0004"+
		"\u0000\u0000\u009e\u009f\u0003\u0016\u000b\u0000\u009f\u00b3\u0001\u0000"+
		"\u0000\u0000\u00a0\u00a1\u0005\u0011\u0000\u0000\u00a1\u00a2\u0003\u0014"+
		"\n\u0000\u00a2\u00a3\u0005\u0012\u0000\u0000\u00a3\u00b3\u0001\u0000\u0000"+
		"\u0000\u00a4\u00a5\u0007\u0000\u0000\u0000\u00a5\u00b3\u0003\u0014\n\n"+
		"\u00a6\u00a7\u0005\u0017\u0000\u0000\u00a7\u00b3\u0003\u0014\n\u0007\u00a8"+
		"\u00a9\u0003\u0018\f\u0000\u00a9\u00aa\u0005\u0011\u0000\u0000\u00aa\u00ab"+
		"\u0003\u0014\n\u0000\u00ab\u00ac\u0005\u0012\u0000\u0000\u00ac\u00b3\u0001"+
		"\u0000\u0000\u0000\u00ad\u00b3\u0005\u001f\u0000\u0000\u00ae\u00b3\u0005"+
		"!\u0000\u0000\u00af\u00b3\u0005 \u0000\u0000\u00b0\u00b3\u0005\"\u0000"+
		"\u0000\u00b1\u00b3\u0003\u0016\u000b\u0000\u00b2\u0086\u0001\u0000\u0000"+
		"\u0000\u00b2\u008f\u0001\u0000\u0000\u0000\u00b2\u0093\u0001\u0000\u0000"+
		"\u0000\u00b2\u009b\u0001\u0000\u0000\u0000\u00b2\u00a0\u0001\u0000\u0000"+
		"\u0000\u00b2\u00a4\u0001\u0000\u0000\u0000\u00b2\u00a6\u0001\u0000\u0000"+
		"\u0000\u00b2\u00a8\u0001\u0000\u0000\u0000\u00b2\u00ad\u0001\u0000\u0000"+
		"\u0000\u00b2\u00ae\u0001\u0000\u0000\u0000\u00b2\u00af\u0001\u0000\u0000"+
		"\u0000\u00b2\u00b0\u0001\u0000\u0000\u0000\u00b2\u00b1\u0001\u0000\u0000"+
		"\u0000\u00b3\u00bc\u0001\u0000\u0000\u0000\u00b4\u00b5\n\t\u0000\u0000"+
		"\u00b5\u00b6\u0007\u0000\u0000\u0000\u00b6\u00bb\u0003\u0014\n\n\u00b7"+
		"\u00b8\n\b\u0000\u0000\u00b8\u00b9\u0007\u0001\u0000\u0000\u00b9\u00bb"+
		"\u0003\u0014\n\t\u00ba\u00b4\u0001\u0000\u0000\u0000\u00ba\u00b7\u0001"+
		"\u0000\u0000\u0000\u00bb\u00be\u0001\u0000\u0000\u0000\u00bc\u00ba\u0001"+
		"\u0000\u0000\u0000\u00bc\u00bd\u0001\u0000\u0000\u0000\u00bd\u0015\u0001"+
		"\u0000\u0000\u0000\u00be\u00bc\u0001\u0000\u0000\u0000\u00bf\u00c0\u0005"+
		"\u0018\u0000\u0000\u00c0\u00c1\u0003\u0014\n\u0000\u00c1\u00c2\u0005\u0001"+
		"\u0000\u0000\u00c2\u00c3\u0003\u0014\n\u0000\u00c3\u00c4\u0005\u0019\u0000"+
		"\u0000\u00c4\u00c7\u0001\u0000\u0000\u0000\u00c5\u00c7\u0005\u001f\u0000"+
		"\u0000\u00c6\u00bf\u0001\u0000\u0000\u0000\u00c6\u00c5\u0001\u0000\u0000"+
		"\u0000\u00c7\u0017\u0001\u0000\u0000\u0000\u00c8\u00d0\u0005\u001a\u0000"+
		"\u0000\u00c9\u00d0\u0005\u0014\u0000\u0000\u00ca\u00d0\u0005\u0010\u0000"+
		"\u0000\u00cb\u00d0\u0005\u001b\u0000\u0000\u00cc\u00d0\u0005\u001c\u0000"+
		"\u0000\u00cd\u00d0\u0005\u001d\u0000\u0000\u00ce\u00d0\u0005\u001e\u0000"+
		"\u0000\u00cf\u00c8\u0001\u0000\u0000\u0000\u00cf\u00c9\u0001\u0000\u0000"+
		"\u0000\u00cf\u00ca\u0001\u0000\u0000\u0000\u00cf\u00cb\u0001\u0000\u0000"+
		"\u0000\u00cf\u00cc\u0001\u0000\u0000\u0000\u00cf\u00cd\u0001\u0000\u0000"+
		"\u0000\u00cf\u00ce\u0001\u0000\u0000\u0000\u00d0\u0019\u0001\u0000\u0000"+
		"\u0000\u0012\u001d)-5=FPU_bmv\u0081\u00b2\u00ba\u00bc\u00c6\u00cf";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}