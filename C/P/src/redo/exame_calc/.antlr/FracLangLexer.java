// Generated from /home/tiago/DiscoD/UA/C/P/src/redo/exame_calc/FracLang.g4 by ANTLR 4.9.2
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class FracLangLexer extends Lexer {
	static { RuntimeMetaData.checkVersion("4.9.2", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, FRAC=12, STRING=13, ID=14, EOL=15, WS=16, COMMENT=17, 
		ERROR=18;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	private static String[] makeRuleNames() {
		return new String[] {
			"T__0", "T__1", "T__2", "T__3", "T__4", "T__5", "T__6", "T__7", "T__8", 
			"T__9", "T__10", "FRAC", "STRING", "ID", "EOL", "WS", "COMMENT", "ERROR"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'+'", "'-'", "'('", "')'", "'*'", "':'", "'read'", "'reduce'", 
			"'display'", "'<'", "'='"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, null, null, null, null, null, null, 
			"FRAC", "STRING", "ID", "EOL", "WS", "COMMENT", "ERROR"
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


	public FracLangLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "FracLang.g4"; }

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
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2\24}\b\1\4\2\t\2\4"+
		"\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13\t"+
		"\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\3\2\3\2\3\3\3\3\3\4\3\4\3\5\3\5\3\6\3\6\3\7\3\7\3\b\3\b\3\b"+
		"\3\b\3\b\3\t\3\t\3\t\3\t\3\t\3\t\3\t\3\n\3\n\3\n\3\n\3\n\3\n\3\n\3\n\3"+
		"\13\3\13\3\f\3\f\3\r\6\rM\n\r\r\r\16\rN\3\r\3\r\6\rS\n\r\r\r\16\rT\5\r"+
		"W\n\r\3\16\3\16\7\16[\n\16\f\16\16\16^\13\16\3\16\3\16\3\17\6\17c\n\17"+
		"\r\17\16\17d\3\20\3\20\3\21\6\21j\n\21\r\21\16\21k\3\21\3\21\3\22\3\22"+
		"\3\22\7\22s\n\22\f\22\16\22v\13\22\3\22\3\22\3\22\3\22\3\23\3\23\4\\t"+
		"\2\24\3\3\5\4\7\5\t\6\13\7\r\b\17\t\21\n\23\13\25\f\27\r\31\16\33\17\35"+
		"\20\37\21!\22#\23%\24\3\2\6\3\2\62;\3\2c|\3\2==\5\2\13\f\17\17\"\"\2\u0083"+
		"\2\3\3\2\2\2\2\5\3\2\2\2\2\7\3\2\2\2\2\t\3\2\2\2\2\13\3\2\2\2\2\r\3\2"+
		"\2\2\2\17\3\2\2\2\2\21\3\2\2\2\2\23\3\2\2\2\2\25\3\2\2\2\2\27\3\2\2\2"+
		"\2\31\3\2\2\2\2\33\3\2\2\2\2\35\3\2\2\2\2\37\3\2\2\2\2!\3\2\2\2\2#\3\2"+
		"\2\2\2%\3\2\2\2\3\'\3\2\2\2\5)\3\2\2\2\7+\3\2\2\2\t-\3\2\2\2\13/\3\2\2"+
		"\2\r\61\3\2\2\2\17\63\3\2\2\2\218\3\2\2\2\23?\3\2\2\2\25G\3\2\2\2\27I"+
		"\3\2\2\2\31L\3\2\2\2\33X\3\2\2\2\35b\3\2\2\2\37f\3\2\2\2!i\3\2\2\2#o\3"+
		"\2\2\2%{\3\2\2\2\'(\7-\2\2(\4\3\2\2\2)*\7/\2\2*\6\3\2\2\2+,\7*\2\2,\b"+
		"\3\2\2\2-.\7+\2\2.\n\3\2\2\2/\60\7,\2\2\60\f\3\2\2\2\61\62\7<\2\2\62\16"+
		"\3\2\2\2\63\64\7t\2\2\64\65\7g\2\2\65\66\7c\2\2\66\67\7f\2\2\67\20\3\2"+
		"\2\289\7t\2\29:\7g\2\2:;\7f\2\2;<\7w\2\2<=\7e\2\2=>\7g\2\2>\22\3\2\2\2"+
		"?@\7f\2\2@A\7k\2\2AB\7u\2\2BC\7r\2\2CD\7n\2\2DE\7c\2\2EF\7{\2\2F\24\3"+
		"\2\2\2GH\7>\2\2H\26\3\2\2\2IJ\7?\2\2J\30\3\2\2\2KM\t\2\2\2LK\3\2\2\2M"+
		"N\3\2\2\2NL\3\2\2\2NO\3\2\2\2OV\3\2\2\2PR\7\61\2\2QS\t\2\2\2RQ\3\2\2\2"+
		"ST\3\2\2\2TR\3\2\2\2TU\3\2\2\2UW\3\2\2\2VP\3\2\2\2VW\3\2\2\2W\32\3\2\2"+
		"\2X\\\7$\2\2Y[\13\2\2\2ZY\3\2\2\2[^\3\2\2\2\\]\3\2\2\2\\Z\3\2\2\2]_\3"+
		"\2\2\2^\\\3\2\2\2_`\7$\2\2`\34\3\2\2\2ac\t\3\2\2ba\3\2\2\2cd\3\2\2\2d"+
		"b\3\2\2\2de\3\2\2\2e\36\3\2\2\2fg\t\4\2\2g \3\2\2\2hj\t\5\2\2ih\3\2\2"+
		"\2jk\3\2\2\2ki\3\2\2\2kl\3\2\2\2lm\3\2\2\2mn\b\21\2\2n\"\3\2\2\2op\7/"+
		"\2\2pt\7/\2\2qs\13\2\2\2rq\3\2\2\2sv\3\2\2\2tu\3\2\2\2tr\3\2\2\2uw\3\2"+
		"\2\2vt\3\2\2\2wx\7\f\2\2xy\3\2\2\2yz\b\22\2\2z$\3\2\2\2{|\13\2\2\2|&\3"+
		"\2\2\2\n\2NTV\\dkt\3\b\2\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}