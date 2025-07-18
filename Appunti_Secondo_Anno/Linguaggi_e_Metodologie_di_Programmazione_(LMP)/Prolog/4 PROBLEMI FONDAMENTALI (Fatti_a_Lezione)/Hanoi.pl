% TORRE DI HANOI 


/* Il problema delle TORRI DI HANOI consiste nel muovere i dischi da una torre ad un altra seguendo le regole del gioco. Ovvero, non si può inserire un disco più grande su un disco più piccolo */

ordinata([]).
ordinata([_]).
ordinata([H1, H2|T]) :-
    H1 < H2,
    ord([H2|T]).

hanoi([],_,_).


hanoi(h([X|A], B, C), h(A, [X|B], C)) :-
    ord([X|A]), 
    ord([X|B]),
    ord(C).


/* Nel predicato ORDINATA andiamo a definire: 
   1) Questa regola indica che una lista vuota ([]) è considerata ordinata.
   2) Questa regola indica che una lista con un solo elemento ([_]) è considerata ordinata.
   3) Questa regola verifica se una lista con due o più elementi ([H1,H2|T]) è ordinata. Se il primo elemento (H1) è maggiore del secondo elemento (H2), e la parte rimanente della lista ([H2|T]) è ordinata, allora la lista originale è considerata ordinata.
  
 */

