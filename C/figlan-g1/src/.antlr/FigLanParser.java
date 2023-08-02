// Generated from /home/tiago/DiscoD/repository/figlan-g1/src/FigLan.g4 by ANTLR 4.9.2
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class FigLanParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.9.2", RuntimeMetaData.VERSION); }

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
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__4) | (1L << T__6) | (1L << T__7) | (1L << T__8) | (1L << T__9) | (1L << T__10) | (1L << T__15) | (1L << T__19) | (1L << T__25) | (1L << T__26) | (1L << T__27) | (1L << T__28) | (1L << T__29) | (1L << ID) | (1L << EOL))) != 0)) {
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
	public static class DeclareAssignStructContext extends DeclareContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public TerminalNode ID() { return getToken(FigLanParser.ID, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public DeclareAssignStructContext(DeclareContext ctx) { copyFrom(ctx); }
	}
	public static class DeclareStructContext extends DeclareContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public List<TerminalNode> ID() { return getTokens(FigLanParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(FigLanParser.ID, i);
		}
		public DeclareStructContext(DeclareContext ctx) { copyFrom(ctx); }
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
	public static class AssignStructContext extends AssignContext {
		public TerminalNode ID() { return getToken(FigLanParser.ID, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public AssignStructContext(AssignContext ctx) { copyFrom(ctx); }
	}
	public static class AssignAddSubContext extends AssignContext {
		public Token op;
		public TerminalNode ID() { return getToken(FigLanParser.ID, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public AssignAddSubContext(AssignContext ctx) { copyFrom(ctx); }
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
	public static class ShowAllContext extends ShowContext {
		public ShowAllContext(ShowContext ctx) { copyFrom(ctx); }
	}
	public static class ShowIDContext extends ShowContext {
		public List<TerminalNode> ID() { return getTokens(FigLanParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(FigLanParser.ID, i);
		}
		public ShowIDContext(ShowContext ctx) { copyFrom(ctx); }
	}
	public static class ShowConstructorContext extends ShowContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ShowConstructorContext(ShowContext ctx) { copyFrom(ctx); }
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
	public static class HideIDContext extends HideContext {
		public List<TerminalNode> ID() { return getTokens(FigLanParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(FigLanParser.ID, i);
		}
		public HideIDContext(HideContext ctx) { copyFrom(ctx); }
	}
	public static class HideAllContext extends HideContext {
		public HideAllContext(HideContext ctx) { copyFrom(ctx); }
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

	public static class PauseContext extends ParserRuleContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public PauseContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_pause; }
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
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__4) | (1L << T__6) | (1L << T__7) | (1L << T__8) | (1L << T__9) | (1L << T__10) | (1L << T__15) | (1L << T__19) | (1L << T__25) | (1L << T__26) | (1L << T__27) | (1L << T__28) | (1L << T__29) | (1L << ID) | (1L << EOL))) != 0)) {
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
	public static class ConstructLineContext extends ExprContext {
		public List<PointContext> point() {
			return getRuleContexts(PointContext.class);
		}
		public PointContext point(int i) {
			return getRuleContext(PointContext.class,i);
		}
		public ConstructLineContext(ExprContext ctx) { copyFrom(ctx); }
	}
	public static class ConstructCircleContext extends ExprContext {
		public PointContext point() {
			return getRuleContext(PointContext.class,0);
		}
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ConstructCircleContext(ExprContext ctx) { copyFrom(ctx); }
	}
	public static class ExprReadContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ExprReadContext(ExprContext ctx) { copyFrom(ctx); }
	}
	public static class ExprParentContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ExprParentContext(ExprContext ctx) { copyFrom(ctx); }
	}
	public static class ExprConvertContext extends ExprContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ExprConvertContext(ExprContext ctx) { copyFrom(ctx); }
	}
	public static class ExprIntContext extends ExprContext {
		public TerminalNode INT() { return getToken(FigLanParser.INT, 0); }
		public ExprIntContext(ExprContext ctx) { copyFrom(ctx); }
	}
	public static class ExprTextContext extends ExprContext {
		public TerminalNode TEXT() { return getToken(FigLanParser.TEXT, 0); }
		public ExprTextContext(ExprContext ctx) { copyFrom(ctx); }
	}
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
	}
	public static class ConstructPointContext extends ExprContext {
		public PointContext point() {
			return getRuleContext(PointContext.class,0);
		}
		public ConstructPointContext(ExprContext ctx) { copyFrom(ctx); }
	}
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
	}
	public static class ExprSignContext extends ExprContext {
		public Token op;
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ExprSignContext(ExprContext ctx) { copyFrom(ctx); }
	}
	public static class ExprRealContext extends ExprContext {
		public TerminalNode REAL() { return getToken(FigLanParser.REAL, 0); }
		public ExprRealContext(ExprContext ctx) { copyFrom(ctx); }
	}
	public static class ExprIDContext extends ExprContext {
		public TerminalNode ID() { return getToken(FigLanParser.ID, 0); }
		public ExprIDContext(ExprContext ctx) { copyFrom(ctx); }
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
	public static class PointStructureContext extends PointContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public PointStructureContext(PointContext ctx) { copyFrom(ctx); }
	}
	public static class PointIDContext extends PointContext {
		public TerminalNode ID() { return getToken(FigLanParser.ID, 0); }
		public PointIDContext(PointContext ctx) { copyFrom(ctx); }
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
	public static class TypeCircleContext extends TypeContext {
		public TypeCircleContext(TypeContext ctx) { copyFrom(ctx); }
	}
	public static class TypeLineContext extends TypeContext {
		public TypeLineContext(TypeContext ctx) { copyFrom(ctx); }
	}
	public static class TypeRealContext extends TypeContext {
		public TypeRealContext(TypeContext ctx) { copyFrom(ctx); }
	}
	public static class TypeTextContext extends TypeContext {
		public TypeTextContext(TypeContext ctx) { copyFrom(ctx); }
	}
	public static class TypeIntegerContext extends TypeContext {
		public TypeIntegerContext(TypeContext ctx) { copyFrom(ctx); }
	}
	public static class TypePointContext extends TypeContext {
		public TypePointContext(TypeContext ctx) { copyFrom(ctx); }
	}
	public static class TypeFigureContext extends TypeContext {
		public TypeFigureContext(TypeContext ctx) { copyFrom(ctx); }
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
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3(\u00d4\4\2\t\2\4"+
		"\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13\t"+
		"\13\4\f\t\f\4\r\t\r\4\16\t\16\3\2\7\2\36\n\2\f\2\16\2!\13\2\3\2\3\2\3"+
		"\3\3\3\3\3\3\3\3\3\3\3\3\3\5\3,\n\3\3\3\3\3\5\3\60\n\3\3\4\3\4\3\4\3\4"+
		"\7\4\66\n\4\f\4\16\49\13\4\3\4\3\4\3\4\3\4\3\4\5\4@\n\4\3\5\3\5\3\5\3"+
		"\5\3\5\3\5\3\5\5\5I\n\5\3\6\3\6\3\6\3\6\3\6\3\6\7\6Q\n\6\f\6\16\6T\13"+
		"\6\3\6\3\6\5\6X\n\6\3\7\3\7\3\7\3\7\3\7\3\7\7\7`\n\7\f\7\16\7c\13\7\5"+
		"\7e\n\7\3\b\3\b\3\b\3\t\3\t\3\t\3\t\7\tn\n\t\f\t\16\tq\13\t\3\n\3\n\3"+
		"\n\3\n\7\nw\n\n\f\n\16\nz\13\n\3\13\3\13\3\13\3\13\3\13\3\13\7\13\u0082"+
		"\n\13\f\13\16\13\u0085\13\13\3\13\3\13\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f"+
		"\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3"+
		"\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f"+
		"\3\f\5\f\u00b5\n\f\3\f\3\f\3\f\3\f\3\f\3\f\7\f\u00bd\n\f\f\f\16\f\u00c0"+
		"\13\f\3\r\3\r\3\r\3\r\3\r\3\r\3\r\5\r\u00c9\n\r\3\16\3\16\3\16\3\16\3"+
		"\16\3\16\3\16\5\16\u00d2\n\16\3\16\2\3\26\17\2\4\6\b\n\f\16\20\22\24\26"+
		"\30\32\2\4\3\2\5\6\3\2\27\30\2\u00ef\2\37\3\2\2\2\4/\3\2\2\2\6?\3\2\2"+
		"\2\bH\3\2\2\2\nW\3\2\2\2\fd\3\2\2\2\16f\3\2\2\2\20i\3\2\2\2\22r\3\2\2"+
		"\2\24{\3\2\2\2\26\u00b4\3\2\2\2\30\u00c8\3\2\2\2\32\u00d1\3\2\2\2\34\36"+
		"\5\4\3\2\35\34\3\2\2\2\36!\3\2\2\2\37\35\3\2\2\2\37 \3\2\2\2 \"\3\2\2"+
		"\2!\37\3\2\2\2\"#\7\2\2\3#\3\3\2\2\2$,\5\6\4\2%,\5\b\5\2&,\5\n\6\2\',"+
		"\5\f\7\2(,\5\22\n\2),\5\20\t\2*,\5\16\b\2+$\3\2\2\2+%\3\2\2\2+&\3\2\2"+
		"\2+\'\3\2\2\2+(\3\2\2\2+)\3\2\2\2+*\3\2\2\2+,\3\2\2\2,-\3\2\2\2-\60\7"+
		"%\2\2.\60\5\24\13\2/+\3\2\2\2/.\3\2\2\2\60\5\3\2\2\2\61\62\5\32\16\2\62"+
		"\67\7!\2\2\63\64\7\3\2\2\64\66\7!\2\2\65\63\3\2\2\2\669\3\2\2\2\67\65"+
		"\3\2\2\2\678\3\2\2\28@\3\2\2\29\67\3\2\2\2:;\5\32\16\2;<\7!\2\2<=\7\4"+
		"\2\2=>\5\26\f\2>@\3\2\2\2?\61\3\2\2\2?:\3\2\2\2@\7\3\2\2\2AB\7!\2\2BC"+
		"\7\4\2\2CI\5\26\f\2DE\7!\2\2EF\t\2\2\2FG\7\4\2\2GI\5\26\f\2HA\3\2\2\2"+
		"HD\3\2\2\2I\t\3\2\2\2JK\7\7\2\2KX\7\b\2\2LM\7\7\2\2MR\7!\2\2NO\7\3\2\2"+
		"OQ\7!\2\2PN\3\2\2\2QT\3\2\2\2RP\3\2\2\2RS\3\2\2\2SX\3\2\2\2TR\3\2\2\2"+
		"UV\7\7\2\2VX\5\26\f\2WJ\3\2\2\2WL\3\2\2\2WU\3\2\2\2X\13\3\2\2\2YZ\7\t"+
		"\2\2Ze\7\b\2\2[\\\7\t\2\2\\a\7!\2\2]^\7\3\2\2^`\7!\2\2_]\3\2\2\2`c\3\2"+
		"\2\2a_\3\2\2\2ab\3\2\2\2be\3\2\2\2ca\3\2\2\2dY\3\2\2\2d[\3\2\2\2e\r\3"+
		"\2\2\2fg\7\n\2\2gh\5\26\f\2h\17\3\2\2\2ij\7\13\2\2jo\5\26\f\2kl\7\3\2"+
		"\2ln\5\26\f\2mk\3\2\2\2nq\3\2\2\2om\3\2\2\2op\3\2\2\2p\21\3\2\2\2qo\3"+
		"\2\2\2rs\7\f\2\2sx\5\26\f\2tu\7\3\2\2uw\5\26\f\2vt\3\2\2\2wz\3\2\2\2x"+
		"v\3\2\2\2xy\3\2\2\2y\23\3\2\2\2zx\3\2\2\2{|\7\r\2\2|}\5\b\5\2}~\7\16\2"+
		"\2~\177\5\26\f\2\177\u0083\7\17\2\2\u0080\u0082\5\4\3\2\u0081\u0080\3"+
		"\2\2\2\u0082\u0085\3\2\2\2\u0083\u0081\3\2\2\2\u0083\u0084\3\2\2\2\u0084"+
		"\u0086\3\2\2\2\u0085\u0083\3\2\2\2\u0086\u0087\7\20\2\2\u0087\25\3\2\2"+
		"\2\u0088\u0089\b\f\1\2\u0089\u008a\7\21\2\2\u008a\u008b\7\22\2\2\u008b"+
		"\u008c\7\23\2\2\u008c\u008d\5\30\r\2\u008d\u008e\7\3\2\2\u008e\u008f\5"+
		"\26\f\2\u008f\u0090\7\24\2\2\u0090\u00b5\3\2\2\2\u0091\u0092\5\30\r\2"+
		"\u0092\u0093\7\25\2\2\u0093\u0094\5\26\f\20\u0094\u00b5\3\2\2\2\u0095"+
		"\u0096\7\21\2\2\u0096\u0097\7\26\2\2\u0097\u0098\7\23\2\2\u0098\u0099"+
		"\5\30\r\2\u0099\u009a\7\3\2\2\u009a\u009b\5\30\r\2\u009b\u009c\7\24\2"+
		"\2\u009c\u00b5\3\2\2\2\u009d\u009e\5\30\r\2\u009e\u009f\7\6\2\2\u009f"+
		"\u00a0\7\6\2\2\u00a0\u00a1\5\30\r\2\u00a1\u00b5\3\2\2\2\u00a2\u00a3\7"+
		"\23\2\2\u00a3\u00a4\5\26\f\2\u00a4\u00a5\7\24\2\2\u00a5\u00b5\3\2\2\2"+
		"\u00a6\u00a7\t\2\2\2\u00a7\u00b5\5\26\f\f\u00a8\u00a9\7\31\2\2\u00a9\u00b5"+
		"\5\26\f\t\u00aa\u00ab\5\32\16\2\u00ab\u00ac\7\23\2\2\u00ac\u00ad\5\26"+
		"\f\2\u00ad\u00ae\7\24\2\2\u00ae\u00b5\3\2\2\2\u00af\u00b5\7!\2\2\u00b0"+
		"\u00b5\7#\2\2\u00b1\u00b5\7\"\2\2\u00b2\u00b5\7$\2\2\u00b3\u00b5\5\30"+
		"\r\2\u00b4\u0088\3\2\2\2\u00b4\u0091\3\2\2\2\u00b4\u0095\3\2\2\2\u00b4"+
		"\u009d\3\2\2\2\u00b4\u00a2\3\2\2\2\u00b4\u00a6\3\2\2\2\u00b4\u00a8\3\2"+
		"\2\2\u00b4\u00aa\3\2\2\2\u00b4\u00af\3\2\2\2\u00b4\u00b0\3\2\2\2\u00b4"+
		"\u00b1\3\2\2\2\u00b4\u00b2\3\2\2\2\u00b4\u00b3\3\2\2\2\u00b5\u00be\3\2"+
		"\2\2\u00b6\u00b7\f\13\2\2\u00b7\u00b8\t\2\2\2\u00b8\u00bd\5\26\f\f\u00b9"+
		"\u00ba\f\n\2\2\u00ba\u00bb\t\3\2\2\u00bb\u00bd\5\26\f\13\u00bc\u00b6\3"+
		"\2\2\2\u00bc\u00b9\3\2\2\2\u00bd\u00c0\3\2\2\2\u00be\u00bc\3\2\2\2\u00be"+
		"\u00bf\3\2\2\2\u00bf\27\3\2\2\2\u00c0\u00be\3\2\2\2\u00c1\u00c2\7\32\2"+
		"\2\u00c2\u00c3\5\26\f\2\u00c3\u00c4\7\3\2\2\u00c4\u00c5\5\26\f\2\u00c5"+
		"\u00c6\7\33\2\2\u00c6\u00c9\3\2\2\2\u00c7\u00c9\7!\2\2\u00c8\u00c1\3\2"+
		"\2\2\u00c8\u00c7\3\2\2\2\u00c9\31\3\2\2\2\u00ca\u00d2\7\34\2\2\u00cb\u00d2"+
		"\7\26\2\2\u00cc\u00d2\7\22\2\2\u00cd\u00d2\7\35\2\2\u00ce\u00d2\7\36\2"+
		"\2\u00cf\u00d2\7\37\2\2\u00d0\u00d2\7 \2\2\u00d1\u00ca\3\2\2\2\u00d1\u00cb"+
		"\3\2\2\2\u00d1\u00cc\3\2\2\2\u00d1\u00cd\3\2\2\2\u00d1\u00ce\3\2\2\2\u00d1"+
		"\u00cf\3\2\2\2\u00d1\u00d0\3\2\2\2\u00d2\33\3\2\2\2\24\37+/\67?HRWado"+
		"x\u0083\u00b4\u00bc\u00be\u00c8\u00d1";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}