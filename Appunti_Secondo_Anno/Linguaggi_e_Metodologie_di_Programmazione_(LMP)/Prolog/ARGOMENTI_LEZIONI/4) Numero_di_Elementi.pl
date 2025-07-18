% NUMERO DI ELEMENTI 

/* Per trovare il numero di elementi di una lista scriveremo NUMERO_DI_EL(LISTA, ELEMENTO CERCATO, NUMERO) */

% PASSO BASE(PB):

numero_di_El([],_,0).

% PASSO INDUTTIVO(PI):

numero_di_El([El|T], El, N):-
	numero_di_EL(T,El,M),
	N is M + 1.

numero_di_El([X|T],El,M):-
	X \= El,
	numero_di_El(T,El,M).

/* Nel PASSO BASE si dice: " Avendo una lista vuota, non cercheremo nessun elemento _, il numero di occorrenze cercate sarà 0 " */
/* Nel PASSO INDUTTIVO si dice: " Avendo una lista dove l'elemento cercato sta in testa H, cercheremo nella coda T l'elemento e avremo che N sarà la somma di M + 1 ovvero M è il numero di elementi presenti nella coda T e 1 è l'elemento trovato nella testa H */


