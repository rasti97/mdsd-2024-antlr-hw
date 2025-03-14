grammar StateModel;

// Parser rules
model: statesBlock transitionsBlock;

statesBlock: 'states' '{' stateDefinition* '}';

stateDefinition: ('initial')? ID ('{' colorList? '}')? ('error')? ';';

colorList: ID (',' ID)*;

transitionsBlock: 'transitions' '{' transitionDefinition* '}';

transitionDefinition: 'trans' ('normal' | 'error') ID ':' ID '->' ID ';';

// Lexer rules
ID: [a-zA-Z_][a-zA-Z_0-9]*;
WS: [ \t\r\n]+ -> skip;
