% STRUTTURA ALBOREA 


% PASSO_BASE_1:

leaf(t(R,[]),R).

% PASSO_INDUTTIVO_1:

leaf(t(_, Children),L):-
	member(C,Children),
	leaf(C,L).


% PASSO_BASE_2:

node(t(R,_),R).

% PASSO_INDUTTIVO_2:

node(t(_, Children),L)):-
	member(C,Children),
	leaf(C,L).

/* Nel PASSO_BASE_1 diciamo che: " La foglia R è il Root " */
/* Nel PASSO_INDUTTIVO_1 diciamo che: " La foglia L è un figlio se C appartiene ai figli se C è la foglia L " */
/* Nel PASSO_BASE_2 diciamo che: " Il nodo R è il Root " */
/* Nel PASSO_INDUTTIVO_2 diciamo che: " Il nodo R è un figlio se C appartiene ai figli e se C è il nodo L " */

