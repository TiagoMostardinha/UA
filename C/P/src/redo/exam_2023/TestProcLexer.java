// Generated from TestProc.g4 by ANTLR 4.12.0
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast", "CheckReturnValue"})
public class TestProcLexer extends Lexer {
	static { RuntimeMetaData.checkVersion("4.12.0", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, NL=9, 
		ID=10, STRING=11, EOL=12, WS=13, COMMENT=14, ERROR=15;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	private static String[] makeRuleNames() {
		return new String[] {
			"T__0", "T__1", "T__2", "T__3", "T__4", "T__5", "T__6", "T__7", "NL", 
			"ID", "STRING", "EOL", "WS", "COMMENT", "ERROR"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'output'", "'='", "'('", "')'", "'|'", "'+'", "'replace'", "'grep'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, null, null, null, "NL", "ID", "STRING", 
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


	public TestProcLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "TestProc.g4"; }

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
		"\u0004\u0000\u000fp\u0006\uffff\uffff\u0002\u0000\u0007\u0000\u0002\u0001"+
		"\u0007\u0001\u0002\u0002\u0007\u0002\u0002\u0003\u0007\u0003\u0002\u0004"+
		"\u0007\u0004\u0002\u0005\u0007\u0005\u0002\u0006\u0007\u0006\u0002\u0007"+
		"\u0007\u0007\u0002\b\u0007\b\u0002\t\u0007\t\u0002\n\u0007\n\u0002\u000b"+
		"\u0007\u000b\u0002\f\u0007\f\u0002\r\u0007\r\u0002\u000e\u0007\u000e\u0001"+
		"\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001"+
		"\u0000\u0001\u0001\u0001\u0001\u0001\u0002\u0001\u0002\u0001\u0003\u0001"+
		"\u0003\u0001\u0004\u0001\u0004\u0001\u0005\u0001\u0005\u0001\u0006\u0001"+
		"\u0006\u0001\u0006\u0001\u0006\u0001\u0006\u0001\u0006\u0001\u0006\u0001"+
		"\u0006\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001"+
		"\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001\b\u0003\bF\b"+
		"\b\u0001\t\u0001\t\u0004\tJ\b\t\u000b\t\f\tK\u0001\n\u0001\n\u0005\nP"+
		"\b\n\n\n\f\nS\t\n\u0001\n\u0001\n\u0004\nW\b\n\u000b\n\f\nX\u0003\n[\b"+
		"\n\u0001\u000b\u0001\u000b\u0001\f\u0004\f`\b\f\u000b\f\f\fa\u0001\f\u0001"+
		"\f\u0001\r\u0001\r\u0005\rh\b\r\n\r\f\rk\t\r\u0001\r\u0001\r\u0001\u000e"+
		"\u0001\u000e\u0001Q\u0000\u000f\u0001\u0001\u0003\u0002\u0005\u0003\u0007"+
		"\u0004\t\u0005\u000b\u0006\r\u0007\u000f\b\u0011\t\u0013\n\u0015\u000b"+
		"\u0017\f\u0019\r\u001b\u000e\u001d\u000f\u0001\u0000\u0005\u0001\u0000"+
		"$$\u0003\u000009AZaz\u0001\u0000;;\u0003\u0000\t\n\r\r  \u0002\u0000\n"+
		"\n\r\rx\u0000\u0001\u0001\u0000\u0000\u0000\u0000\u0003\u0001\u0000\u0000"+
		"\u0000\u0000\u0005\u0001\u0000\u0000\u0000\u0000\u0007\u0001\u0000\u0000"+
		"\u0000\u0000\t\u0001\u0000\u0000\u0000\u0000\u000b\u0001\u0000\u0000\u0000"+
		"\u0000\r\u0001\u0000\u0000\u0000\u0000\u000f\u0001\u0000\u0000\u0000\u0000"+
		"\u0011\u0001\u0000\u0000\u0000\u0000\u0013\u0001\u0000\u0000\u0000\u0000"+
		"\u0015\u0001\u0000\u0000\u0000\u0000\u0017\u0001\u0000\u0000\u0000\u0000"+
		"\u0019\u0001\u0000\u0000\u0000\u0000\u001b\u0001\u0000\u0000\u0000\u0000"+
		"\u001d\u0001\u0000\u0000\u0000\u0001\u001f\u0001\u0000\u0000\u0000\u0003"+
		"&\u0001\u0000\u0000\u0000\u0005(\u0001\u0000\u0000\u0000\u0007*\u0001"+
		"\u0000\u0000\u0000\t,\u0001\u0000\u0000\u0000\u000b.\u0001\u0000\u0000"+
		"\u0000\r0\u0001\u0000\u0000\u0000\u000f8\u0001\u0000\u0000\u0000\u0011"+
		"E\u0001\u0000\u0000\u0000\u0013G\u0001\u0000\u0000\u0000\u0015Z\u0001"+
		"\u0000\u0000\u0000\u0017\\\u0001\u0000\u0000\u0000\u0019_\u0001\u0000"+
		"\u0000\u0000\u001be\u0001\u0000\u0000\u0000\u001dn\u0001\u0000\u0000\u0000"+
		"\u001f \u0005o\u0000\u0000 !\u0005u\u0000\u0000!\"\u0005t\u0000\u0000"+
		"\"#\u0005p\u0000\u0000#$\u0005u\u0000\u0000$%\u0005t\u0000\u0000%\u0002"+
		"\u0001\u0000\u0000\u0000&\'\u0005=\u0000\u0000\'\u0004\u0001\u0000\u0000"+
		"\u0000()\u0005(\u0000\u0000)\u0006\u0001\u0000\u0000\u0000*+\u0005)\u0000"+
		"\u0000+\b\u0001\u0000\u0000\u0000,-\u0005|\u0000\u0000-\n\u0001\u0000"+
		"\u0000\u0000./\u0005+\u0000\u0000/\f\u0001\u0000\u0000\u000001\u0005r"+
		"\u0000\u000012\u0005e\u0000\u000023\u0005p\u0000\u000034\u0005l\u0000"+
		"\u000045\u0005a\u0000\u000056\u0005c\u0000\u000067\u0005e\u0000\u0000"+
		"7\u000e\u0001\u0000\u0000\u000089\u0005g\u0000\u00009:\u0005r\u0000\u0000"+
		":;\u0005e\u0000\u0000;<\u0005p\u0000\u0000<\u0010\u0001\u0000\u0000\u0000"+
		"=>\u0005n\u0000\u0000>F\u0005l\u0000\u0000?@\u0005N\u0000\u0000@F\u0005"+
		"l\u0000\u0000AB\u0005n\u0000\u0000BF\u0005L\u0000\u0000CD\u0005N\u0000"+
		"\u0000DF\u0005L\u0000\u0000E=\u0001\u0000\u0000\u0000E?\u0001\u0000\u0000"+
		"\u0000EA\u0001\u0000\u0000\u0000EC\u0001\u0000\u0000\u0000F\u0012\u0001"+
		"\u0000\u0000\u0000GI\u0007\u0000\u0000\u0000HJ\u0007\u0001\u0000\u0000"+
		"IH\u0001\u0000\u0000\u0000JK\u0001\u0000\u0000\u0000KI\u0001\u0000\u0000"+
		"\u0000KL\u0001\u0000\u0000\u0000L\u0014\u0001\u0000\u0000\u0000MQ\u0005"+
		"\"\u0000\u0000NP\t\u0000\u0000\u0000ON\u0001\u0000\u0000\u0000PS\u0001"+
		"\u0000\u0000\u0000QR\u0001\u0000\u0000\u0000QO\u0001\u0000\u0000\u0000"+
		"RT\u0001\u0000\u0000\u0000SQ\u0001\u0000\u0000\u0000T[\u0005\"\u0000\u0000"+
		"UW\u0007\u0001\u0000\u0000VU\u0001\u0000\u0000\u0000WX\u0001\u0000\u0000"+
		"\u0000XV\u0001\u0000\u0000\u0000XY\u0001\u0000\u0000\u0000Y[\u0001\u0000"+
		"\u0000\u0000ZM\u0001\u0000\u0000\u0000ZV\u0001\u0000\u0000\u0000[\u0016"+
		"\u0001\u0000\u0000\u0000\\]\u0007\u0002\u0000\u0000]\u0018\u0001\u0000"+
		"\u0000\u0000^`\u0007\u0003\u0000\u0000_^\u0001\u0000\u0000\u0000`a\u0001"+
		"\u0000\u0000\u0000a_\u0001\u0000\u0000\u0000ab\u0001\u0000\u0000\u0000"+
		"bc\u0001\u0000\u0000\u0000cd\u0006\f\u0000\u0000d\u001a\u0001\u0000\u0000"+
		"\u0000ei\u0005#\u0000\u0000fh\b\u0004\u0000\u0000gf\u0001\u0000\u0000"+
		"\u0000hk\u0001\u0000\u0000\u0000ig\u0001\u0000\u0000\u0000ij\u0001\u0000"+
		"\u0000\u0000jl\u0001\u0000\u0000\u0000ki\u0001\u0000\u0000\u0000lm\u0006"+
		"\r\u0000\u0000m\u001c\u0001\u0000\u0000\u0000no\t\u0000\u0000\u0000o\u001e"+
		"\u0001\u0000\u0000\u0000\b\u0000EKQXZai\u0001\u0006\u0000\u0000";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}