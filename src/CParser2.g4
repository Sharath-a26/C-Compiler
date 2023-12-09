grammar CParser2;
@parser::header { import ast.*; }
options { tokenVocab=CLexer2; }

//program
/* 
programfinal : preprocessorlist program;

program :  structorunionlist program | enumlist program | functiondeclarationlist program 
		|  functionlist program | label program | globaldeclarationlist program |  ;




label : Identifier Colon ; 


globaldeclarationlist : declaration2 globaldeclarationlist2;

globaldeclarationlist2 : globaldeclarationlist | ;

functiondeclarationlist : functiondeclaration functiondeclarationlist2;
functiondeclarationlist2 : functiondeclarationlist | ;

//enumlist

enumlist : enumdeclaration enumlist2;
enumlist2 : enumlist | ;

//struct or union list



structorunionlist : structunionspecifier structorunionlist2 ;
structorunionlist2 : structorunionlist | ;

functionlist : functiondefinition functionlist2  ;

functionlist2 : functionlist | ;

preprocessorlist :  preprocessor preprocessorlist2 ;
preprocessorlist2 : preprocessorlist | ;
//preprocessors

preprocessor : Directive preprocessorsuffix;

preprocessorsuffix : StringLiteral | Less Dir Greater | expression StringLiteral | expression expression;



//functions




argumentlist :     expression argumentlist2;
argumentlist2 : Comma argumentlist | ;

functiondefinition : declarationspecifier Identifier LeftParanthesis 
parameterlist RightParanthesis compoundstatement;

functiondeclaration : declarationspecifier Identifier LeftParanthesis functiondeclaration2
 						;

functiondeclaration2 : parameterlist RightParanthesis Semicolon 
					| declarationparameterlist  RightParanthesis Semicolon;


declarationparameterlist : 
		
		  declarationspecifier declarationparameterlist2
		
		
		| parameter
		;
		
declarationparameterlist2 : Comma declarationparameterlist | ;

parameterlist :  parameter parameterlist2  | parameter | ;
parameterlist2 : Comma parameterlist | ;

parameter : declarationspecifier Identifier 
		| arraydeclarationwithoutsemi | ;

//enumerators
enumdeclaration : Enum enumdeclaration2;


enumdeclaration2 : Identifier enumdeclaration3
					| LeftBrace enumeratorlist RightBrace Semicolon
					;
					
enumdeclaration3 : LeftBrace enumeratorlist RightBrace Semicolon
					| Semicolon;

enumdeclarationwithoutsemi : Enum enumdeclarationwithoutsemi2;

enumdeclarationwithoutsemi2 : Identifier enumdeclarationwithoutsemi3
						| LeftBrace enumeratorlist RightBrace ;
						
enumdeclarationwithoutsemi3 : LeftBrace enumeratorlist RightBrace | ;		


enumeratorlist :  enumerator enumeratorlist2;
enumeratorlist2 : Comma enumeratorlist | ; 
 
enumerator : Identifier enumerator2;
enumerator2 : AssignmentOperator Digit | ;


//structures and unions
 

structunionspecifier : structorunion Identifier structunionspecifier2
						 ;
						 
structunionspecifier2 : LeftBrace declarationlist
						RightBrace Semicolon
						| Semicolon;

structunionspecifierwithoutsemi : structorunion Identifier structunionspecifierwithoutsemi2 
			
						 ;
structunionspecifierwithoutsemi2 : 	LeftBrace declarationlist
						RightBrace | ;				

structorunion : Struct | Union;

//arrays
arraydeclaration : arraydeclarationwithoutsemi Semicolon;

arraydeclarationwithoutsemi : 
			 declarationspecifier Identifier  arraydeclarationwithoutsemi2;
			 
arraydeclarationwithoutsemi2 : arrayindexlist arraydeclarationwithoutsemi3
								;
								
arraydeclarationwithoutsemi3 : AssignmentOperator initializerlist | ;

structvariabledeclaration : structorunion Identifier Identifier AssignmentOperator initializerlist Semicolon;


arraysize : arithmeticexpression |  ;

initializerlist : LeftBrace initializationvalues RightBrace;


initializationvalues :   expression initializationvalues2 | initializerlist initializationvalues2;

initializationvalues2 : Comma initializationvalues | ;

 

//pointers
pointer : typespecifier starrecursion | typequalifier typespecifier 
		starrecursion;


	
starrecursion : Star starrecursion2 ;
starrecursion2 : starrecursion | ;

//loops
jumpstatement : Goto Identifier Semicolon
				| Continue Semicolon
				| Break Semicolon
				| Return jumpstatement2;
				
				
jumpstatement2 : expression Semicolon | Semicolon;


iterationstatement : While LeftParanthesis expression RightParanthesis 
					statement 
				| Do statement While LeftParanthesis expression RightParanthesis 
					Semicolon
			| For LeftParanthesis forcondition RightParanthesis statement;

forcondition : forextra Semicolon forcondition2;

forcondition2 : forexpression Semicolon forcondition3
				| ;
				
forcondition3 :  forexpression
				| ;

forextra : fordeclaration expression | expression;

forexpression :  assignmentexpression forexpression2;
forexpression2 : Comma forexpression | ;


fordeclaration :   declarationspecifier fordeclaration2;
fordeclaration2 : declarationlist | ;


//conditional statements
selectionstatement : ifstatement selectionstatement2
		| Switch LeftParanthesis expression RightParanthesis statement;

selectionstatement2 : Else statement | ;

ifstatement : If LeftParanthesis expression RightParanthesis statement;

//statements
statement : labeledstatement | compoundstatement | expressionstatement | 
		selectionstatement | iterationstatement | jumpstatement 
		| returnstatement;
	

	
labeledstatement : Identifier Colon statement | Case expression 
Colon statement | Default Colon statement;

blockitem : statement | declaration 
| structunionspecifier | enumdeclaration 
| declarationlist | structvariabledeclaration
| label | typecasting;


typecasting : LeftParanthesis declarationspecifier RightParanthesis expression;
 
blockitemlist :  blockitem blockitemlist2 | ;
blockitemlist2 : blockitemlist | ;


compoundstatement : LeftBrace blockitemlist RightBrace;

expressionstatement : expression Semicolon;

returnstatement : Return expression Semicolon;

breakstatement : Break Semicolon;

//declaration


declarationlist :   declaration2 declarationlist2;

declarationlist2 : declarationlist | ;

declaration2 : arraydeclaration | declaration;
 
declaration : declarationspecifier identifierlist Semicolon;

declaration3 : AssignmentOperator expression Semicolon | Semicolon;

identifierlist : listval Comma identifierlist | listval;

listval : Identifier AssignmentOperator expression | Identifier;
 
declarationspecifier : pointer | typespecifier2 | storageclassspecifier declarationspecifier3  | typequalifier
			typespecifier2 | functionspecifier typespecifier |   functionspecifier 
			| signspecifier typespecifier2 |structorenumorunionspecifier Identifier declarationspecifier2 | 
			 |
			structunionspecifierwithoutsemi | enumdeclarationwithoutsemi
			;
		
declarationspecifier2 : starrecursion | ;
declarationspecifier3 : typespecifier | ;
			
structorenumorunionspecifier : Struct  | Union  | Enum ;

functionspecifier : Inline;

typequalifier : Const | Restrict | Volatile;

storageclassspecifier : Typedef | Extern | Static | Register | Auto;

signspecifier : Signed | Unsigned;

typespecifier2 : typespecifierprefix  typespecifier3 | typespecifier ;
typespecifier3 : typespecifier | ;


typespecifierprefix: Long Long | Long | Short  ;



typespecifier :   Int temp | Float temp | Char temp | Double temp | Void temp | File temp | Identifier temp;
temp : starrecursion | ;


//expressions
expression : assignmentexpression;
*/
assignmentexpression returns [ASTNode node] : 
					 
				| t1= unaryexpression {$node = $t1.node;} AssignmentOperator assignmentexpression 
				| t2 = unaryexpression {$node = $t2.node;} PlusAssignment assignmentexpression
				| t3 = unaryexpression {$node = $t3.node;} MinusAssignment assignmentexpression
				| t4 = unaryexpression {$node = $t4.node;} StarAssignment assignmentexpression
				| t5 = unaryexpression {$node = $t5.node;} DivAssignment assignmentexpression
				| t6 = unaryexpression {$node = $t6.node;} ModAssignment assignmentexpression
				| t7 = unaryexpression {$node = $t7.node;} LeftShiftAssignment assignmentexpression
				| t8 = unaryexpression {$node = $t8.node;} RightShiftAssignment assignmentexpression
				| t9 = unaryexpression {$node = $t9.node;} AndAssignment assignmentexpression
				| t10 = unaryexpression {$node = $t10.node;} XorAssignment assignmentexpression
				| t11 = unaryexpression {$node = $t11.node;} OrAssignment assignmentexpression
				//| conditionalexpression;

/*
conditionalexpression :  logicalorexpression conditionalexpression2;
		
				
conditionalexpression2 : Question expression Colon
				conditionalexpression | ;
*/

arithmeticexpression returns [ASTNode node] : t1 = logicalorexpression {$node = $t1.node; $node.print();};
			

logicalorexpression returns [ASTNode node] : t1= logicalandexpression {$node = $t1.node;} t2 = logicalorexpression2 {$node = ($t2.node != null)? new LogicalOrExp($node,$t2.node) : $node ;};

logicalorexpression2 returns [ASTNode node] : LogicalOr t1 = logicalorexpression {$node = new LogicalOr($t1.node);} | ;


logicalandexpression returns [ASTNode node] : t1 = inclusiveorexpression {$node = $t1.node;} t2 = logicalandexpression2 {$node = ($t2.node != null)? new LogicalAndExp($node,$t2.node) : $node;};

logicalandexpression2 returns [ASTNode node] : LogicalAnd t1 = logicalandexpression {$node = new LogicalAnd($t1.node);} | ;


inclusiveorexpression returns [ASTNode node] : t1 = exclusiveorexpression {$node = $t1.node;} t2 = inclusiveorexpression2 {$node = ($t2.node != null)? new BitWiseOrExp($node,$t2.node) : $node;};
			
inclusiveorexpression2 returns [ASTNode node]: BitwiseOr t1 = inclusiveorexpression { $node = new BitWiseOr($t1.node);} | ;


exclusiveorexpression returns [ASTNode node] :  t1 = andexpression {$node = $t1.node;} t2 = exclusiveorexpression2 {$node = ($t2.node != null)? new XorExp($node, $t2.node) : $node; };
exclusiveorexpression2 returns [ASTNode node] : Xor t1 = exclusiveorexpression {$node = new Xor($t1.node);} | ;
				

andexpression returns [ASTNode node]: t1 = equalityexpression {$node = $t1.node;} t2 = andexpression2 {$node = ($t2.node != null)? new AndExp($node,$t2.node) : $node; };

andexpression2 returns [ASTNode node] : BitwiseAnd t1 = andexpression {$node = new BitWiseAnd($t1.node);} | ;


equalityexpression returns [ASTNode node] : t1 = relationalexpression {$node = $t1.node;}  t2 = equalityexpression2 {$node = ($t2.node != null)? new EqualityExp($node,$t2.node) : $node; };
equalityexpression2 returns [ASTNode node] : Equal t1 = equalityexpression {$node = new Equal($t1.node);}
		       | NotEqual t2 = equalityexpression { $node = new NotEqual($t2.node);}
				| ;

relationalexpression returns [ASTNode node] : t1 = shiftexpression {$node = $t1.node;} t2 = relationalexpression2 {$node = ($t2.node != null)? new RelationalExp($node,$t2.node) : $node ;};



relationalexpression2 returns [ASTNode node] :  Less t1 = relationalexpression {$node = new LessThan($t1.node);}
			 | Greater t2 = relationalexpression {$node = new Greater($t2.node);}
			 | LessEqual t3 = relationalexpression {$node = new LessOrEqual($t3.node);}
			 | GreaterEqual t4 = relationalexpression {$node = new GreaterOrEqual($t4.node);}
			| ;

shiftexpression returns [ASTNode node] :  t1 = additiveexpression {$node = $t1.node;} t2 = shiftexpression2 {$node = ($t2.node != null)? new ShiftExp($node,$t2.node) : $node; };
				

 					
shiftexpression2 returns [ASTNode node]: 	RightShift t1 = shiftexpression {$node = new RightShift($t1.node);}
					| LeftShift t2 = shiftexpression {$node = new LeftShift($t2.node);} | ;
 					
 				

additiveexpression returns [ASTNode node] : t1 = multiplicativeexpression {$node = $t1.node;} t2 = additiveexpression2 {$node = ($t2.node != null)? new AdditiveExp($node,$t2.node)  : $node; };
				
additiveexpression2 returns [ASTNode node] : Plus t1 = additiveexpression {$node = new Add($t1.node);}
					| Minus t2 = additiveexpression {$node = new Subtract($t2.node);}
					| ;
			



multiplicativeexpression returns [ASTNode node] : t1 = unaryexpression {$node = $t1.node;} t2 = multiplicativeexpression2 {$node = ($t2.node != null) ?  new MultiplicativeExp($node,$t2.node) : $node; };



multiplicativeexpression2 returns [ASTNode node] : Star t1 = multiplicativeexpression {$node = new Multiply($t1.node);}
			     |  Div t2 = multiplicativeexpression {$node = new Divide($t2.node);}
			     |  Mod t3 = multiplicativeexpression {$node = new Modulus($t3.node); }
				 | ;

unaryexpression returns [ASTNode node] :  
					LeftParanthesis t1 = unaryexpression {$node = $t1.node; }  RightParanthesis
					| Decrement t2 = unaryexpression {$node = new Decrement($t2.node);}
					| Increment t3 =  unaryexpression {$node = new Increment($t3.node);  }
 					| Plus t4 = unaryexpression {$node = new Plus($t4.node); }
 					| Minus t5 = unaryexpression {$node = new Minus($t5.node); }
 					| Tilde t6 = unaryexpression {$node = new BitWiseNot($t6.node);}
 					| Not t7 = unaryexpression {$node = new LogicalNot($t7.node);}
					| BitwiseAnd t8 = unaryexpression  {$node = new BitWiseAnd($t8.node); }
					| Star t9 = unaryexpression {$node = new PointerVal($t9.node); }
					| t11 = primaryexpression {$node = $t11.node; }
					/* 
					| t10 = iterexpression {$node = $t10.node;}
					| 
					| t12 = arraypostfixexpression {$node = $t12.node;}
					| t13 = structpostfixexpression {$node = $t13.node;}
					| t14 = pointermemberaccess {$node = $t14.node;}
					| t15 = functioncall {$node = $t15.node;}*/
					;
/*

arrayindexlist : LeftSquareBracket arraysize RightSquareBracket arrayindexlist2;
			
arrayindexlist2 : arrayindexlist | ;

structindexlist : Dot structindexlist2 structindexlist  | Dot structindexlist2 ;

structindexlist2 : Identifier | arraypostfixexpression;

arraypostfixexpression returns [ASTNode node] : Identifier arrayindexlist;

structpostfixexpression returns [ASTNode node] : Identifier structindexlist 
	| arraypostfixexpression structindexlist;
						

iterexpression returns [ASTNode node] : Identifier incrementlist | incrementlist iterexpression2
| arraypostfixexpression incrementlist   
| structpostfixexpression incrementlist  ;

iterexpression2 : Identifier | arraypostfixexpression | structpostfixexpression;
					
pointermemberaccess returns [ASTNode node] : Identifier Arrow Identifier;	
		
 				
functioncall returns [ASTNode node] : functionname LeftParanthesis argumentlist RightParanthesis;


functionname : Sizeof | Identifier;	
 				 					
incrementlist : Increment | Decrement;
 					
//iterprefix : Identifier | arraypostfixexpression;

 	*/				 

primaryexpression returns [ASTNode node] : Identifier {$node = new IdExp($Identifier.text); }
					| Digit							{$node = new NumExp($Digit.text); }
					| DigitSequence					{$node = new NumExp($DigitSequence.text);}
 					| IntegerLiteral				{$node = new NumExp($IntegerLiteral.text); }
 					| Constant
 					| CharacterConstant				{$node = new CharExp($CharacterConstant.text);}
 					| StringLiteral					{$node = new StringExp($StringLiteral.text); }
 					//| LeftParanthesis expression RightParanthesis
 					
 					;
 



 					
