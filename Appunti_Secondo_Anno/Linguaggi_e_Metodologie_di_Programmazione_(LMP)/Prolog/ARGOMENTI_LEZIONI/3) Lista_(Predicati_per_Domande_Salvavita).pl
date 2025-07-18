/* Possiamo rappresentare le liste in Prolog nel seguente modo [H|T] dove H è il primo elemento della lista e T è il resto della lista */



/* Per verificare se un ELEMENTO APPARTIENE ALLA LISTA scriveremo APPARTIENE(ELEMENTO,LISTA) */

% PASSO BASE (PB):

appartiene(X,[X|_]).

% PASSO INDUTTIVO (PI):

appartiene(X,[_|T]):-
	appartiene(X,T).

/* Nel PASSO BASE si dice: "X appartiene alla testa (H), ovvero il primo elemento della lista"
   Nel PASSO INDUTTIVO si dice: "X appartiene alla coda (T), ovvero al resto della lista"  */




/* Per CONCATENARE due liste A e B ed ottenere una nuova lista C che le contiene entrambe, scriviamo CONCATENA(A,B,C) */

% PASSO BASE (PB):

concatena([], A, A).

% PASSO INDUTTIVO (PI):

concatena([H|T],B,[H|L]):-
	concatena(T,B,L).

/* Nel PASSO BASE  si dice: " Avendo una lista vuota [] e una lista A la concatenazione tra le due liste sarà la lista A " */
/* Nel PASSO INDUTTIVO si dice: " Avendo una lista A, formata da testa H e coda T, e un'altra lista B, la concatenazione tra le due liste sarà una nuova lista C che avrà come testa H (testa della lista A) e come coda L che è la concatenazione della coda T della lista A e di tutta la lista B "*/




/* Avendo una lista L per ricavarmi la RIVOLTATA scriverò RIVOLTATA(LISTA,RIVOLTATA_DELLA_LISTA) */

% PASSO BASE (PB):

rivoltata([],[]).

% PASSO INDUTTIVO (PI):

rivoltata([H|T],RL):-
	append(RT,[H],RL),
	rivoltata(T, RT).

/* Nel PASSO BASE si dice: " Avendo una lista vuota la sua rivoltata sarà una lista vuota " */
/* Nel PASSO INDUTTIVO si dice: " Avendo una lista L formata da testa H e coda T la sua rivoltata sarà una lista RL, se in RL appartiene la rivoltata della coda T che chiameremo RT e successivamente la testa H "*/




/* Per verificare la LUNGHEZZA di una lista scriveremo LUNG(LISTA,LUNGHEZZA) */
	

% PASSO BASE(PB):
 
lung([], 0).

% PASSO INDUTTIVO(PI):

lung([_|T], N):-
	lung(T,M),
	N is M + 1.

/* Nel PASSO BASE si dice: " Avendo una lista vuota la sua lunghezza sarà 0 " */
/* Nel PASSO INDUTTIVO si dice: " Avendo una lista la sua lunghezza sarà N se la coda T della lista misura M e se N è la somma di M + 1 ovvero il primo elemento H della lista "*/




