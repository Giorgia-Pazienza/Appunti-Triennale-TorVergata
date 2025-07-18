% GENITORE_FRATELLO_AVO


% Scrivere un programma in Prolog significa scrivere un INSIEME DI PREDICATI. Questi possono essere definiti da FATTI e REGOLE

genitore(rosina,sara). % La seguente riga di codice mostra un FATTO: " Rosina è genitore di Sara " 
genitore(rosina,benedetta). % La seguente riga di codice mostra un'altro FATTO: " Rosina è genitore di Benedetta "



% Per rispondera alla query "?- sorella(sara,bendetta)." ovvero "Sara è sorella di Bendetta?" scriveremo la seguente REGOLA. 

sorella(X,Y):-
	genitore(Z,X),
	genitore(Z,Y).

/* Nella seguente REGOLA viene detto: " X è sorella di Y se Z è genitore di X e Z è genitore di Y ", usiamo X e Y nella regola poichè sono variabili "generiche" che possiamo istanziare con qualsiasi nome */



% Per rispondere alla query "?- nonna(angela, benedetta)." ovvero "Angela è nonna di Benedetta?" aggiungiamo altri FATTI e scriviamo la seguente REGOLA. 

genitore(angela,rosina).
genitore(angelo,rosina).

nonna(X,Y):-
	genitore(X,Z),
	genitore(Z,Y).


/* Nella seguente REGOLA viene detto: " X è nonno di Y se X è genitore di Z e Z è genitore di Y " */



% Per rispondere alla query "?- avo(mario,sara)." ovvero "Mario è avo di Sara?" aggiungiamo altri FATTI  e scriviamo la seguente REGOLA.
% N.B: avo è il bisnonno di Sara


% Questa REGOLA si divide in PASSO BASE  e PASSO INDUTTIVO:

% PASSO BASE (PB):

avo(X,Y):-
	genitore(X,Y).


% PASSO INDUTTIVO (PI):

avo(X,Y):-
	genitore(X,Z),
	avo(Z,Y).

/* Nel PASSO BASE della seguente regola viene detto: " X è avo di Y se X è genitore di Y "
   Nel PASSO INDUTTIVO della seguente regola viene detto: " X è avo di Y se X è genitore di Z e Z è avo di Y" */

