grammar StateModel;

// Parser rules
model: statesBlock transitionsBlock;

statesBlock: STATES LCURLY stateDefinition* RCURLY;

stateDefinition: ('initial')? ID ('{' labelList? '}')? ('error')? ';';

labelList: ID (',' ID)*;

transitionsBlock: 'transitions' '{' transitionDefinition* '}';

transitionDefinition: 'trans' ('normal' | 'error') ID ':' ID '->' ID ';';

// Lexer rules
ID: [a-z][a-z0-9]*;
WS: [ \t\r\n]+ -> skip;

STATES: 'states';
TRANSITIONS: 'transitions';
LCURLY: '{';
RCURLY: '}';
