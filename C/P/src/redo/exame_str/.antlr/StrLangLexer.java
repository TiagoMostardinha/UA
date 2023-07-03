// Generated from /home/tiago/DiscoD/UA/C/P/src/redo/exame_str/StrLang.g4 by ANTLR 4.9.2
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class StrLangLexer extends Lexer {
	static { RuntimeMetaData.checkVersion("4.9.2", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, ID=6, STRING=7, EOL=8, WS=9, COMMENT=10, 
		ERROR=11;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	private static String[] makeRuleNames() {
		return new String[] {
			"T__0", "T__1", "T__2", "T__3", "T__4", "ID", "STRING", "EOL", "WS", 
			"COMMENT", "ERROR"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "':'", "'print'", "'input'", "'('", "')'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, "ID", "STRING", "EOL", "WS", "COMMENT", 
			"ERROR"
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


	public StrLangLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "StrLang.g4"; }

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
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2\rT\b\1\4\2\t\2\4"+
		"\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13\t"+
		"\13\4\f\t\f\3\2\3\2\3\3\3\3\3\3\3\3\3\3\3\3\3\4\3\4\3\4\3\4\3\4\3\4\3"+
		"\5\3\5\3\6\3\6\3\7\3\7\7\7.\n\7\f\7\16\7\61\13\7\3\b\3\b\7\b\65\n\b\f"+
		"\b\16\b8\13\b\3\b\3\b\3\t\5\t=\n\t\3\t\3\t\3\n\6\nB\n\n\r\n\16\nC\3\n"+
		"\3\n\3\13\3\13\3\13\3\13\7\13L\n\13\f\13\16\13O\13\13\3\13\3\13\3\f\3"+
		"\f\3\66\2\r\3\3\5\4\7\5\t\6\13\7\r\b\17\t\21\n\23\13\25\f\27\r\3\2\6\3"+
		"\2c|\4\2\62;c|\4\2\13\13\"\"\4\2\f\f\17\17\2X\2\3\3\2\2\2\2\5\3\2\2\2"+
		"\2\7\3\2\2\2\2\t\3\2\2\2\2\13\3\2\2\2\2\r\3\2\2\2\2\17\3\2\2\2\2\21\3"+
		"\2\2\2\2\23\3\2\2\2\2\25\3\2\2\2\2\27\3\2\2\2\3\31\3\2\2\2\5\33\3\2\2"+
		"\2\7!\3\2\2\2\t\'\3\2\2\2\13)\3\2\2\2\r+\3\2\2\2\17\62\3\2\2\2\21<\3\2"+
		"\2\2\23A\3\2\2\2\25G\3\2\2\2\27R\3\2\2\2\31\32\7<\2\2\32\4\3\2\2\2\33"+
		"\34\7r\2\2\34\35\7t\2\2\35\36\7k\2\2\36\37\7p\2\2\37 \7v\2\2 \6\3\2\2"+
		"\2!\"\7k\2\2\"#\7p\2\2#$\7r\2\2$%\7w\2\2%&\7v\2\2&\b\3\2\2\2\'(\7*\2\2"+
		"(\n\3\2\2\2)*\7+\2\2*\f\3\2\2\2+/\t\2\2\2,.\t\3\2\2-,\3\2\2\2.\61\3\2"+
		"\2\2/-\3\2\2\2/\60\3\2\2\2\60\16\3\2\2\2\61/\3\2\2\2\62\66\7$\2\2\63\65"+
		"\13\2\2\2\64\63\3\2\2\2\658\3\2\2\2\66\67\3\2\2\2\66\64\3\2\2\2\679\3"+
		"\2\2\28\66\3\2\2\29:\7$\2\2:\20\3\2\2\2;=\7\17\2\2<;\3\2\2\2<=\3\2\2\2"+
		"=>\3\2\2\2>?\7\f\2\2?\22\3\2\2\2@B\t\4\2\2A@\3\2\2\2BC\3\2\2\2CA\3\2\2"+
		"\2CD\3\2\2\2DE\3\2\2\2EF\b\n\2\2F\24\3\2\2\2GH\7\61\2\2HI\7\61\2\2IM\3"+
		"\2\2\2JL\n\5\2\2KJ\3\2\2\2LO\3\2\2\2MK\3\2\2\2MN\3\2\2\2NP\3\2\2\2OM\3"+
		"\2\2\2PQ\b\13\2\2Q\26\3\2\2\2RS\13\2\2\2S\30\3\2\2\2\b\2/\66<CM\3\b\2"+
		"\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}