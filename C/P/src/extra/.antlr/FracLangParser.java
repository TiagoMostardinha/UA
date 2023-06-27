// Generated from /home/tiago/DiscoD/UA/C/P/src/extra/FracLang.g4 by ANTLR 4.9.2
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class FracLangParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.9.2", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, INT=12, ID=13, WS=14, COMMENT=15, ERROR=16;
	public static final int
		RULE_program = 0, RULE_stat = 1, RULE_assign = 2, RULE_display = 3, RULE_expr = 4, 
		RULE_frac = 5;
	private static String[] makeRuleNames() {
		return new String[] {
			"program", "stat", "assign", "display", "expr", "frac"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'<'", "'='", "';'", "'display'", "'+'", "'-'", "'*'", "':'", "'('", 
			"')'", "'/'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, null, null, null, null, null, null, 
			"INT", "ID", "WS", "COMMENT", "ERROR"
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
	public String getGrammarFileName() { return "FracLang.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public FracLangParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	public static class ProgramContext extends ParserRuleContext {
		public TerminalNode EOF() { return getToken(FracLangParser.EOF, 0); }
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
			setState(15);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__3 || _la==ID) {
				{
				{
				setState(12);
				stat();
				}
				}
				setState(17);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(18);
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
		public StatContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_stat; }
	 
		public StatContext() { }
		public void copyFrom(StatContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class DisplayStatContext extends StatContext {
		public DisplayContext display() {
			return getRuleContext(DisplayContext.class,0);
		}
		public DisplayStatContext(StatContext ctx) { copyFrom(ctx); }
	}
	public static class AssignStatContext extends StatContext {
		public AssignContext assign() {
			return getRuleContext(AssignContext.class,0);
		}
		public AssignStatContext(StatContext ctx) { copyFrom(ctx); }
	}

	public final StatContext stat() throws RecognitionException {
		StatContext _localctx = new StatContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_stat);
		try {
			setState(22);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case ID:
				_localctx = new AssignStatContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(20);
				assign();
				}
				break;
			case T__3:
				_localctx = new DisplayStatContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(21);
				display();
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

	public static class AssignContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(FracLangParser.ID, 0); }
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public AssignContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_assign; }
	}

	public final AssignContext assign() throws RecognitionException {
		AssignContext _localctx = new AssignContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_assign);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(24);
			match(ID);
			setState(25);
			match(T__0);
			setState(26);
			match(T__1);
			setState(28); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(27);
				expr(0);
				}
				}
				setState(30); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( (((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__4) | (1L << T__5) | (1L << T__8) | (1L << INT) | (1L << ID))) != 0) );
			setState(32);
			match(T__2);
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

	public static class DisplayContext extends ParserRuleContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public DisplayContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_display; }
	}

	public final DisplayContext display() throws RecognitionException {
		DisplayContext _localctx = new DisplayContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_display);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(34);
			match(T__3);
			setState(36); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(35);
				expr(0);
				}
				}
				setState(38); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( (((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__4) | (1L << T__5) | (1L << T__8) | (1L << INT) | (1L << ID))) != 0) );
			setState(40);
			match(T__2);
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
		public ExprContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expr; }
	 
		public ExprContext() { }
		public void copyFrom(ExprContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class ParathensisExprContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ParathensisExprContext(ExprContext ctx) { copyFrom(ctx); }
	}
	public static class IntExprContext extends ExprContext {
		public TerminalNode INT() { return getToken(FracLangParser.INT, 0); }
		public IntExprContext(ExprContext ctx) { copyFrom(ctx); }
	}
	public static class UnitaryExprContext extends ExprContext {
		public Token op;
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public UnitaryExprContext(ExprContext ctx) { copyFrom(ctx); }
	}
	public static class MultdivExprContext extends ExprContext {
		public Token op;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public MultdivExprContext(ExprContext ctx) { copyFrom(ctx); }
	}
	public static class AddminusExprContext extends ExprContext {
		public Token op;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public AddminusExprContext(ExprContext ctx) { copyFrom(ctx); }
	}
	public static class FracExprContext extends ExprContext {
		public FracContext frac() {
			return getRuleContext(FracContext.class,0);
		}
		public FracExprContext(ExprContext ctx) { copyFrom(ctx); }
	}
	public static class IdExprContext extends ExprContext {
		public TerminalNode ID() { return getToken(FracLangParser.ID, 0); }
		public IdExprContext(ExprContext ctx) { copyFrom(ctx); }
	}

	public final ExprContext expr() throws RecognitionException {
		return expr(0);
	}

	private ExprContext expr(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		ExprContext _localctx = new ExprContext(_ctx, _parentState);
		ExprContext _prevctx = _localctx;
		int _startState = 8;
		enterRecursionRule(_localctx, 8, RULE_expr, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(52);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,4,_ctx) ) {
			case 1:
				{
				_localctx = new UnitaryExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(43);
				((UnitaryExprContext)_localctx).op = _input.LT(1);
				_la = _input.LA(1);
				if ( !(_la==T__4 || _la==T__5) ) {
					((UnitaryExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(44);
				expr(7);
				}
				break;
			case 2:
				{
				_localctx = new ParathensisExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(45);
				match(T__8);
				setState(46);
				expr(0);
				setState(47);
				match(T__9);
				}
				break;
			case 3:
				{
				_localctx = new IntExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(49);
				match(INT);
				}
				break;
			case 4:
				{
				_localctx = new FracExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(50);
				frac();
				}
				break;
			case 5:
				{
				_localctx = new IdExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(51);
				match(ID);
				}
				break;
			}
			_ctx.stop = _input.LT(-1);
			setState(62);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,6,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(60);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,5,_ctx) ) {
					case 1:
						{
						_localctx = new MultdivExprContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(54);
						if (!(precpred(_ctx, 6))) throw new FailedPredicateException(this, "precpred(_ctx, 6)");
						setState(55);
						((MultdivExprContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__6 || _la==T__7) ) {
							((MultdivExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(56);
						expr(7);
						}
						break;
					case 2:
						{
						_localctx = new AddminusExprContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(57);
						if (!(precpred(_ctx, 5))) throw new FailedPredicateException(this, "precpred(_ctx, 5)");
						setState(58);
						((AddminusExprContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__4 || _la==T__5) ) {
							((AddminusExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(59);
						expr(6);
						}
						break;
					}
					} 
				}
				setState(64);
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

	public static class FracContext extends ParserRuleContext {
		public List<TerminalNode> INT() { return getTokens(FracLangParser.INT); }
		public TerminalNode INT(int i) {
			return getToken(FracLangParser.INT, i);
		}
		public FracContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_frac; }
	}

	public final FracContext frac() throws RecognitionException {
		FracContext _localctx = new FracContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_frac);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(65);
			match(INT);
			setState(66);
			match(T__10);
			setState(67);
			match(INT);
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
		case 4:
			return expr_sempred((ExprContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean expr_sempred(ExprContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 6);
		case 1:
			return precpred(_ctx, 5);
		}
		return true;
	}

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3\22H\4\2\t\2\4\3\t"+
		"\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\3\2\7\2\20\n\2\f\2\16\2\23\13\2\3\2"+
		"\3\2\3\3\3\3\5\3\31\n\3\3\4\3\4\3\4\3\4\6\4\37\n\4\r\4\16\4 \3\4\3\4\3"+
		"\5\3\5\6\5\'\n\5\r\5\16\5(\3\5\3\5\3\6\3\6\3\6\3\6\3\6\3\6\3\6\3\6\3\6"+
		"\3\6\5\6\67\n\6\3\6\3\6\3\6\3\6\3\6\3\6\7\6?\n\6\f\6\16\6B\13\6\3\7\3"+
		"\7\3\7\3\7\3\7\2\3\n\b\2\4\6\b\n\f\2\4\3\2\7\b\3\2\t\n\2K\2\21\3\2\2\2"+
		"\4\30\3\2\2\2\6\32\3\2\2\2\b$\3\2\2\2\n\66\3\2\2\2\fC\3\2\2\2\16\20\5"+
		"\4\3\2\17\16\3\2\2\2\20\23\3\2\2\2\21\17\3\2\2\2\21\22\3\2\2\2\22\24\3"+
		"\2\2\2\23\21\3\2\2\2\24\25\7\2\2\3\25\3\3\2\2\2\26\31\5\6\4\2\27\31\5"+
		"\b\5\2\30\26\3\2\2\2\30\27\3\2\2\2\31\5\3\2\2\2\32\33\7\17\2\2\33\34\7"+
		"\3\2\2\34\36\7\4\2\2\35\37\5\n\6\2\36\35\3\2\2\2\37 \3\2\2\2 \36\3\2\2"+
		"\2 !\3\2\2\2!\"\3\2\2\2\"#\7\5\2\2#\7\3\2\2\2$&\7\6\2\2%\'\5\n\6\2&%\3"+
		"\2\2\2\'(\3\2\2\2(&\3\2\2\2()\3\2\2\2)*\3\2\2\2*+\7\5\2\2+\t\3\2\2\2,"+
		"-\b\6\1\2-.\t\2\2\2.\67\5\n\6\t/\60\7\13\2\2\60\61\5\n\6\2\61\62\7\f\2"+
		"\2\62\67\3\2\2\2\63\67\7\16\2\2\64\67\5\f\7\2\65\67\7\17\2\2\66,\3\2\2"+
		"\2\66/\3\2\2\2\66\63\3\2\2\2\66\64\3\2\2\2\66\65\3\2\2\2\67@\3\2\2\28"+
		"9\f\b\2\29:\t\3\2\2:?\5\n\6\t;<\f\7\2\2<=\t\2\2\2=?\5\n\6\b>8\3\2\2\2"+
		">;\3\2\2\2?B\3\2\2\2@>\3\2\2\2@A\3\2\2\2A\13\3\2\2\2B@\3\2\2\2CD\7\16"+
		"\2\2DE\7\r\2\2EF\7\16\2\2F\r\3\2\2\2\t\21\30 (\66>@";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}