# TESTO: 

Si consideri il problema del massimo flusso.

1. Si definisca formalmente il problema.

2. Si enunci la complessità temporale dell’algoritmo di Ford-Fulkerson, argomentando sulla sua polinomialità o meno. 

---

# SOLUZIONE: 

1. Il problema del Max Flow consiste nel trovare il massimo flusso di una rete residua. Sia un grafo G = ( V, E ) pesato e non connesso, per ogni arco $e ∈ E$ abbiamo una capacità $c(e)$. Costruiamo un Grafo $G_f$ chiamato rete residua uguale al grafo G, dove inseriamo un arco chiamato e_reverse, dove: 
- l'arco e avrà il valore del flusso $C_f(e) = c(e) - f(e)$
- l'arco e_reverse avrà il valore di $f(e)$. 
Per trovare il Max - Flow applichiamo l'algoritmo di Ford-Fulkerson, che si comporta nel 
seguente modo: 
Inizializziamo il flusso $F(e) = 0$ per ogni arco e_reverse sulla rete residua
Trova un qualsiasi cammino aumentante da s a t in $G_f$
Aumenta il flusso lungo il cammino aumentante, ovvero: una volta identificato il cammino 
aumentante, individuiamo la bottolneck capacity e incrementiamo il flusso
Ripetiamo il procedimento finchè non rimani bloccato.

2. La complessità temporale di ford Fulkerson è $O(m \times val(f)) = O( m \times n C)$ dove $m$ = numero di archi esplorati e $val(f) = n C$ è il valore del flusso massimo C per $n$ nodi. L'algoritmo di Ford-Fulkerson ha complessità pseudo-polinomiale

