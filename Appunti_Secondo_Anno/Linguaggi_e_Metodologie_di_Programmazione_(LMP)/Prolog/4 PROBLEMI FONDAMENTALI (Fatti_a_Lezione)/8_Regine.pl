% PROBLEMA 8 REGINE

/* Il rompicapo delle otto regine è un problema che consiste nel trovare il modo di posizionare otto regine su una scacchiera 8×8 tali che nessuna di esse possa catturarne un'altra, usando i movimenti standard della regina. La Regina si muove in linee verticalmente, orizzontalmente e in diagonale */



/* Possiamo rappresentare le caselle della scacchiera come una lista, ovvero [A,B] */



/* Essendo che la scacchiera si MUOVE IN ORIZZONTALE, si effettua un CONTROLLO RIGA */


controlloRiga([A, B], [A, C]).



/* Essendo che la scacchiera si MUOVE IN VERTICALE, si effettua un controllo COLONNA */


controlloColonna([A, B], [C, B]).



/* Essendo che la scacchiera si MUOVE IN DIAGONALE, si effettua un controllo DIAGONALE */

controlloDiagonale([A, B], [C, D]) :-
    X is A - C ,
    Y is B - D, 
    X =\= Y,
    X =\= -Y.

/* X is A - C: differenza tra le righe delle due regine.
   Y is B - D: differenza tra le colonne delle due regine.
   Il predicato verifica che X non sia uguale a Y e che X non sia l'opposto di Y (che significa che non sono nella stessa diagonale) */



/* Una volta controllati i tre movimenti che puà effettuare la regina, ora CONTROLLIAMO OGNI COPPIA DI REGINE se si minacciano a vicenda */

controlloCoppia([A]).
controlloCoppia([A, B|T]) :-
    controlloRiga(A, B),
    controlloColonna(A, B),
    controlloDiagonale(A, B),
    controlloCoppia([A|T]).

/* CASO BASE: Se ci sta una sola regina, allora non si effettua un controllo coppia, perchè è gia verificato */

/* CASO INDUTTIVO:  Rappresentiamo una lista dove A è la prima regina, B è la seconda, e T è la lista delle altre regine. 
   		    Viene verificato prima se si trovano nella stessa riga, nella stessa colonna e nella stessa diagonale. 
   		    Successivamente il predicato continua ad esaminare le prossime coppie, considerando la regina A rispetto alle regine rimanenti nella lista T. */

/* Il predicato CONTROLLO COPPIA è ricorsivo, il che significa che dopo aver controllato una coppia, continua a controllare ogni altra coppia di regine nella lista. */



/* Una volta effettuato il controllo coppia, verifichi il CONTROLLO SOLUZIONE */


controlloSoluzione([A]).
controlloSoluzione([H|T]) :-
    \+controlloCoppia([H|T]),
    controlloSoluzione(T).


/* CASO BASE: se c'è solo una regina, la soluzione è valida. */

/* CASO INDUTTIVO: Si controlla che non ci siano conflitti tra la prima regina H e le altre regine nella coda (T) usando il predicato controlloCoppia([H|T]). 
		   Il \+ (not) indica che il controllo deve fallire (ossia, non ci deve essere nessun conflitto).*/
