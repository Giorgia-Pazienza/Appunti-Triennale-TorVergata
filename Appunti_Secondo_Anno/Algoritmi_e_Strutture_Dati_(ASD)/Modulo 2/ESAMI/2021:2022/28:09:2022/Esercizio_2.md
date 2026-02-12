#TESTO: 

Si consideri consideri il problema dell’Interval Partitioning (IP).
1. Si definisca formalmente il problema di IP. 
2. Si definisca il concetto di depth di un’istanza di IP e si discuta perchè è importante per analizzare l’algoritmo greedy che risolve IP.

---

#SOLUZIONE: 

L'Interval Partitioning è un problema definito nel seguente modo: 
Input: avendo $$n$$ intervalli, ognuno con un tempo di inizio $$S_i$$ e un tempo di fine $$F_i$$
Definiamo un partizione di un sottoinsieme di intervalli (dette classi) $$C_1, ... C_n$$. 
Ogni classe $$C_i$$ contiene al suo interno n intervalli mutualmente compatibili (che non 
si sovrappongono). 
Vogliamo minimizzare il numero di classi che allochiamo e che contengono 2 o più lezioni 
che non si svolgano contemporaneamente.
Per farlo usiamo l'algoritmo GREEDY di EARLIEST START TIME, che ordina gli intervalli in 
ordine crescente di tempo di inizio.