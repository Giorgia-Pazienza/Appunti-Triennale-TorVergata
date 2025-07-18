/* Possiamo rappresentare un GRAFO IN PROLOG */

% Definiamo come FATTI i vari Archi del Grafo che chiameremo Edge

edge(a,b). % con la seguente riga di codice indichiamo un FATTO: " l'arco tra a e b"

edge(a,e).

edgeb(b,c).

edge(e,f).

edge(f,c).

edge(c,d).

edge(f,k).

edge(c,a).

edge(c,d).

edge(d,a).

% Per indicare il percorso tra due nodi in un Grafo scriviamo la REGOLA Path, questa si dividerà in 2 regole: PASSO BASE, PASSO INDUTTIVO

% PASSO BASE (PB):

path(X,Y):-
	edge(X,Y).

% PASSO INDUTTIVO (PI):

path(X,Y):-
	edge(X,Z),
	path(Z,Y).

/* Il PASSO BASE ci dice: " Esiste un percorso tra X e Y se esiste un arco che collega X e Y " */

/* Il PASSO INDUTTIVO ci dice: " Esiste un percorso tra X e Y se esiste un arco tra X e Z e se esiste un percorso tra Z e Y " */



