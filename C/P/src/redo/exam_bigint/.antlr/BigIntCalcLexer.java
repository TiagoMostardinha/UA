// Generated from /home/tiago/DiscoD/UA/C/P/src/redo/exam_bigint/BigIntCalc.g4 by ANTLR 4.9.2
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class BigIntCalcLexer extends Lexer {
	static { RuntimeMetaData.checkVersion("4.9.2", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, T__11=12, T__12=13, ID=14, INT=15, EOL=16, WS=17, COMMENT=18;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	private static String[] makeRuleNames() {
		return new String[] {
			"T__0", "T__1", "T__2", "T__3", "T__4", "T__5", "T__6", "T__7", "T__8", 
			"T__9", "T__10", "T__11", "T__12", "ID", "INT", "EOL", "WS", "COMMENT"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'show'", "'-'", "'>'", "'if'", "'then'", "'else'", "'fi'", "'+'", 
			"'('", "')'", "'*'", "'mod'", "'div'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, "ID", "INT", "EOL", "WS", "COMMENT"
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


	public BigIntCalcLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "BigIntCalc.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public String[] getChannelNames() { return channelNames; }

	@Override
	public String[] getModeNames() { return modeNames; }

	@Override
	public ATN getATN() { return _ATN; }

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2\24n\b\1\4\2\t\2\4"+
		"\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13\t"+
		"\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\3\2\3\2\3\2\3\2\3\2\3\3\3\3\3\4\3\4\3\5\3\5\3\5\3\6\3\6\3\6"+
		"\3\6\3\6\3\7\3\7\3\7\3\7\3\7\3\b\3\b\3\b\3\t\3\t\3\n\3\n\3\13\3\13\3\f"+
		"\3\f\3\r\3\r\3\r\3\r\3\16\3\16\3\16\3\16\3\17\3\17\7\17S\n\17\f\17\16"+
		"\17V\13\17\3\20\6\20Y\n\20\r\20\16\20Z\3\21\3\21\3\22\6\22`\n\22\r\22"+
		"\16\22a\3\22\3\22\3\23\3\23\7\23h\n\23\f\23\16\23k\13\23\3\23\3\23\2\2"+
		"\24\3\3\5\4\7\5\t\6\13\7\r\b\17\t\21\n\23\13\25\f\27\r\31\16\33\17\35"+
		"\20\37\21!\22#\23%\24\3\2\b\4\2C\\c|\5\2\62;C\\c|\3\2\62;\3\2==\5\2\13"+
		"\f\17\17\"\"\4\2\f\f\17\17\2q\2\3\3\2\2\2\2\5\3\2\2\2\2\7\3\2\2\2\2\t"+
		"\3\2\2\2\2\13\3\2\2\2\2\r\3\2\2\2\2\17\3\2\2\2\2\21\3\2\2\2\2\23\3\2\2"+
		"\2\2\25\3\2\2\2\2\27\3\2\2\2\2\31\3\2\2\2\2\33\3\2\2\2\2\35\3\2\2\2\2"+
		"\37\3\2\2\2\2!\3\2\2\2\2#\3\2\2\2\2%\3\2\2\2\3\'\3\2\2\2\5,\3\2\2\2\7"+
		".\3\2\2\2\t\60\3\2\2\2\13\63\3\2\2\2\r8\3\2\2\2\17=\3\2\2\2\21@\3\2\2"+
		"\2\23B\3\2\2\2\25D\3\2\2\2\27F\3\2\2\2\31H\3\2\2\2\33L\3\2\2\2\35P\3\2"+
		"\2\2\37X\3\2\2\2!\\\3\2\2\2#_\3\2\2\2%e\3\2\2\2\'(\7u\2\2()\7j\2\2)*\7"+
		"q\2\2*+\7y\2\2+\4\3\2\2\2,-\7/\2\2-\6\3\2\2\2./\7@\2\2/\b\3\2\2\2\60\61"+
		"\7k\2\2\61\62\7h\2\2\62\n\3\2\2\2\63\64\7v\2\2\64\65\7j\2\2\65\66\7g\2"+
		"\2\66\67\7p\2\2\67\f\3\2\2\289\7g\2\29:\7n\2\2:;\7u\2\2;<\7g\2\2<\16\3"+
		"\2\2\2=>\7h\2\2>?\7k\2\2?\20\3\2\2\2@A\7-\2\2A\22\3\2\2\2BC\7*\2\2C\24"+
		"\3\2\2\2DE\7+\2\2E\26\3\2\2\2FG\7,\2\2G\30\3\2\2\2HI\7o\2\2IJ\7q\2\2J"+
		"K\7f\2\2K\32\3\2\2\2LM\7f\2\2MN\7k\2\2NO\7x\2\2O\34\3\2\2\2PT\t\2\2\2"+
		"QS\t\3\2\2RQ\3\2\2\2SV\3\2\2\2TR\3\2\2\2TU\3\2\2\2U\36\3\2\2\2VT\3\2\2"+
		"\2WY\t\4\2\2XW\3\2\2\2YZ\3\2\2\2ZX\3\2\2\2Z[\3\2\2\2[ \3\2\2\2\\]\t\5"+
		"\2\2]\"\3\2\2\2^`\t\6\2\2_^\3\2\2\2`a\3\2\2\2a_\3\2\2\2ab\3\2\2\2bc\3"+
		"\2\2\2cd\b\22\2\2d$\3\2\2\2ei\7%\2\2fh\n\7\2\2gf\3\2\2\2hk\3\2\2\2ig\3"+
		"\2\2\2ij\3\2\2\2jl\3\2\2\2ki\3\2\2\2lm\b\23\2\2m&\3\2\2\2\7\2TZai\3\b"+
		"\2\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}