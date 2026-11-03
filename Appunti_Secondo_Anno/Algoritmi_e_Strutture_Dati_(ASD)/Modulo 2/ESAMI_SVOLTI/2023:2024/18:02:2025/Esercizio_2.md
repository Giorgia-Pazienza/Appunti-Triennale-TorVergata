# TESTO: 

Si consideri il problema dell’Interval Partitioning (IP).
1. Si definisca formalmente il problema di IP.

2. Si definisca il concetto di depth di un’istanza di IP e si discuta perchè è importante per analizzare l’algoritmo greedy che risolve IP. 

---

# SOLUZIONE: 

1. Avendo n intervalli, dove ogni intervallo I_i ha un tempo di inizio S_i e un tempo di fine f_i. Una partizione di sottoinsieme di intervalli (detta Classe) $$C_1, ... , C_n$$ tale che ogni classe $C_i$ contiene intervalli mutualmente compatibili. Questo algoritmo lo risolvo con l'algoritmo Greedy di Earliest Start Time, che ordina gli intervalli in ordine crescente di costo di inizio. 

2. la Depth corrisponde al numero delle classi aperte e rappresenta la massima sovrapposizione possibile di intervalli in un dato punto. 


