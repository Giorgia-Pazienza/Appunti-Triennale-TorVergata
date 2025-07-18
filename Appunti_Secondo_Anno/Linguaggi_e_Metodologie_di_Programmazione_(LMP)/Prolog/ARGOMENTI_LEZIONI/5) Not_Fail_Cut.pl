% NOT, FAIL, CUT


/* L'operatore NOT viene utilizzato per verificare che qualcosa non sia vero */

amici(mario,giorgia).

/* Alla query " ?-amici(mario,giorgia) " la risposta sarà TRUE, invece, alla query " ?- not(amici(mario,giorgia)) " la risposta sarà FALSE */
/* Alla query " ?-amici(mario,lucia) " la risposta sarà FALSE, invece, alla query " ?- not(amici(mario,lucia)) " la risposta sarà TRUE */



/* L'operatore CUT si indica con ! taglia un ramo della ricerca nell'esecuzione di un programma, ed una volta eseguito non si può tronare indietro su quell'albero */


appartiene(X, [X|_]) :- 
!.

appartiene(X,[-|L]) :- 
appartiene(X,L).

/* Il passo base del predicato appartiene possiamo scrivere un CUT ! in modo tale da interrompere l'esecuzione di quella regola e continuare con la seconda regola */




/* L'operatore FAIL viene utilizzato per forzare Prolog a fallire e a esplorare un altro ramo della ricerca */

fallimento_di_g(A):-
	g(A),
	fail.


% Predicato MY_NOT

my_not(_).

my_not(Predicato):-
	Predicato,
	!,
	fail.


