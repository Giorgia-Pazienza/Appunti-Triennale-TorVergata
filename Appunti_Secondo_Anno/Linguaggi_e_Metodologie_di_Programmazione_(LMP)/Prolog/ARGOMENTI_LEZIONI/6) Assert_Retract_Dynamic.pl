% ASSERT E RETRACT 

/* In Prolog è possibile cambiare il programma nel tempo, aggiungendo o rimuovendo un fatto.

	assert(Fatto) -> aggiunge un nuovo fatto alla base di conoscenza
	assertZ(Fatto) -> aggiunge il fatto alla fine 
	assertA(Fatto) -> aggiunge il fatto all' inizio

	retract(Fatto) -> rimuove un fatto
	retractAll(Fatto) -> rimuove tutti i fatti unificati tra loro
	retractA(Fatto) -> rimuovere un fatto dall’inizio
	retractZ(Fatto) -> rimuovere un fatto dalla fine 
*/



 
% DYNAMIC

/* Per dichiarare che un predicato può essere modificato dinamicamente durante l'esecuzione del programma useremo il predicato DYNAMIC 

	:- dynamic(predicato/n) -> dichiara che per un predicato posso asserire o ritrattare
*/



