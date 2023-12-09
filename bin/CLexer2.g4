lexer grammar CLexer2;

Whitespace : [ \t\r\n]+ -> skip;


Auto : 'auto';
Break : 'break';
Case : 'case';
Char : 'char';
Const : 'const';
Continue : 'continue';
Default : 'default';
Do : 'do';
Double : 'double';
Else : 'else';
Enum : 'enum';
Extern : 'extern';
Float : 'float';
For : 'for';
Goto : 'goto';
If : 'if';
Inline : 'inline';
Int : 'int';
Long : 'long';
Register : 'register';
Restrict : 'restrict';
Return : 'return';
Short : 'short';
Signed : 'signed';
Sizeof : 'sizeof';
Static : 'static';
Struct : 'struct';
Switch : 'switch';
Typedef : 'typedef';
Union : 'union';
Unsigned : 'unsigned';
Void : 'void';
Volatile : 'volatile';
While : 'while';
File : 'FILE';

LeftParanthesis : '(' ;
RightParanthesis :  ')';
LeftSquareBracket : '[';
RightSquareBracket :  ']';
LeftBrace : '{';
RightBrace :  '}';




Less : '<';
LessEqual : '<=';
Greater : '>';
GreaterEqual : '>=';
LeftShift : '<<';
RightShift : '>>';

Plus : '+';
Increment : '++';
Minus : '-';
Decrement : '--';
Star : '*';
Div : '/';
Mod : '%';

BitwiseAnd : '&';
BitwiseOr : '|';
LogicalAnd : '&&';
LogicalOr : '||';
Xor : '^';
Not : '!';
Tilde : '~';

Question : '?';
Colon : ':';
Semicolon : ';';
Comma : ',';
Space : ' ';

AssignmentOperator : '=';
StarAssignment : '*=';
DivAssignment : '/=';
ModAssignment : '%=';
PlusAssignment : '+=';
MinusAssignment : '-=';
LeftShiftAssignment : '<<=';
RightShiftAssignment : '>>=';
AndAssignment : '&=';
XorAssignment : '^=';
OrAssignment : '|=';

Equal : '==';
NotEqual : '!=';

Arrow : '->';
Dot : '.';


Digit : [0-9];
fragment NonDigit : [a-zA-Z_]; // it is defined as a fragment to be reusable
	
Identifier : NonDigit(NonDigit | Digit)*;


//Digits
fragment NonzeroDigit : [1-9];
fragment OctalDigit : [0-7];
fragment HexadecimalDigit : [0-9a-fA-F];

DigitSequence : [0-9] | [0-9]+;

Sign : [+-];




//Constants
BinaryConstant : '0'[bB][0-1];

IntegerLiteral : '0' | '0'[0-9]* | '0'[bB][01]+ | '0'[xX][0-9a-fA-F]+;

OctalConstant : '0'OctalDigit*;
HexadecimalConstant : '0'[xX](HexadecimalDigit)+;
CharacterConstant : '\'' CCharSequence '\'' |  'L\'' CCharSequence '\'' | 'u\'' CCharSequence '\'' | 'U\'' CCharSequence '\'';


fragment FractionalConstant : DigitSequence? '.' DigitSequence | DigitSequence '.' ;

fragment FloatingConstant : FractionalConstant FloatSuffix?;

fragment ExponentPart : [eE] Sign? DigitSequence;

fragment IntegerConstant : IntegerLiteral	 IntegerSuffix? | OctalConstant IntegerSuffix? | HexadecimalConstant IntegerSuffix? | BinaryConstant;

Constant : IntegerConstant | CharacterConstant | FloatingConstant ;


//Suffix
fragment UnsignedSuffix : [uU];
fragment LongSuffix : [lL];
fragment LongLongSuffix : 'll' | 'LL';

fragment IntegerSuffix : UnsignedSuffix LongSuffix? | UnsignedSuffix LongLongSuffix | LongSuffix UnsignedSuffix? | LongLongSuffix UnsignedSuffix?;
fragment FloatSuffix : [flFL];


//escape sequences
EscapeSequence	: '\\' ['"?abfnrtv\\];

//character

fragment CChar	:  ~['\\\r\n] | EscapeSequence;

fragment CCharSequence : CChar+;

//string
fragment
SChar	: ~["\\\r\n]	 | EscapeSequence |  '\\\n'  |   '\\\r\n' ;	

fragment SCharSequence : SChar+;

fragment StringPrefix	: 'u8' | 'u' | 'U' | 'L';

StringLiteral : StringPrefix? '"'SCharSequence'"';

Dir : [a-z]*'.h';


//pre-processor directives
Directive: '#'[ \t]*[a-zA-Z_]+;

//newline
Newline	:  ('\r' '\n'? |'\n');

//whitespace
//WhiteSpace : [\t]+;
//single line comment
LineComment	: '//' ~[\r\n]* -> skip;

//multi-line comment
MultiLineComment : '/*' .*? '*/' -> skip;







