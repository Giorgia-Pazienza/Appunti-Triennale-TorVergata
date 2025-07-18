% IL PERCORSO DEL CAVALLO

/* Il problema del PERCORSO DEL CAVALLO consiste nel far occupare al cavallo tutte le caselle possibili passandoci solo una volta. Il cavallo si muove due passi in orizzontale/verticale e un passo verticale/orizzontale ( forma una luce ) */

% Ci si assicura che il cavallo non visiti mai la stessa casella più di una volta. 

% Se la lista è vuota, la posizione corretta è valida

contollo_unicita(_,[]).

% Verifichiamo se la posizione con la stessa coordinata X (A), la coordinata Y (B) non deve essere uguale a quella trovata Y(C).

controllo_unicita(A/B, [A/C| T]):-
	B =\= C,
	controllo_unicita(A/B,T).



controllo_unicita(A/B, [_/B| T]):-
	A =\= C,
	controllo_unicita(A/B,T).

controllo_unicita(A/B, [_/B| T]):-
	A =\= C,
	B =\= D,
	controllo_unicita(A/T).

controllo_unicita_totale([_]).

controllo_unicita_totale([_]):-
	controllo_unicita(M,T),
	controllo_unicita_totale(T).

mossa_valida(A/B, C/D):-
	abs(A-C, 1),
	abs(B-D, 2).


mossa_valida(A/B, C/D):-
	abs(A-C, 2),
	abs(B-D, 1).


controllo_mosse([_]).

controllo_mosse([M1,M2|T]):-
	mossa_valida(M1,M2),
	controllo_mosse([M2|T]).

controllo_soluzione(L):-
	controllo_unicita_totale(L),
	controllo_mosse(L).

