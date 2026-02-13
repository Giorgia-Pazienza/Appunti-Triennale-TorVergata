# TESTO:

Si consideri una rete di flusso $G = (V, E, s, t, c)$ di $n$ nodi in cui ogni nodo ha grado 
entrante al più 3 (mentre il grado uscente di un nodo può essere anche Θ(n)) e la capacità 
di ogni arco $e ∈ E$ è un numero intero non più grande di $n^2$. Si derivi una delimitazione 
superiore (quanto più stretta possibile) alla complessità temporale dell’algoritmo di 
Ford-Fulkerson sulla rete G. Si può affermare che in questo caso l’algoritmo è garantito 
avere complessità polinomiale? 

---

# SOLUZIONE:

La complessità di Ford-Fulkerson è di $O( m \times val(f) )$, prodotto tra numero di archi e 
valore del flusso. 
In questo caso abbiamo uno nodo che ha al più 3 nodi entranti e $Θ(n)$ è il grado uscente da esso. Quindi il numero di archi uscente da un nodo è al più $O(n)$.
La capacità massima che un arco può avere è non più grande di $n^2$. 
Avremo quindi la capacità di Ford-Fulkerson che sarà $$O( n \times n^2 ) = O( n^3 )$$
L'algoritmo ha complessità polinomiale. 
