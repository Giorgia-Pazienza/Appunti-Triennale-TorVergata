# TESTO: 

Si consideri il problema del calcolo del Minimum Spanning Tree (MST).

1. Si definisca formalmente il problema. 

2. Si enunci formalmente la proprietà del taglio (cut property). 

3. Si discuta in modo conciso e preciso come è possibile usare la proprietà del taglio per dimostrare la correttezza dell’algoritmo di Prim. 

---

# SOLUZIONE: 

1. Sia un grafo $G = ( V, E )$ pesato e connesso, con valore reale nei pesi $c_e$. Uno SPANNING TREE di $G$ è un albero $T = (V, F)$ con $F ⊆ E$ tale che i vertici raggiungono tutti i nodi del grafo. L'MST è uno SPANNING TREE con pesi degli archi minimi, ovvero vogliamo minimizzare il costo totale dei pesi dell'albero $T$.

2. La CUT-Property ci dice che: avendo un CUT e un arco $e$ di costo minimo in G. Avremo un MST relativo a G che conterrà l'arco $e$. 
DIM: Possiamo dimostrarlo per contraddizione. Quindi diremo:
Sia un MST $T$ relativo a $G$ che non contiene l'arco $e$ di costo minimo e che contiene il CUT.
Aggiungiamo l'arco all'interno dell'MST $T$. 
Poichè abbiamo un ciclo $C$ in $G$ e un CUT. Questo grafo avrà almeno un'altro arco $f$ che atrraversa il taglio. 
Poichè $e$ abbiamo detto che è arco di costo minimo, avremo che $w(e) \leq w(f)$. 
Poichè $e$ abbiamo detto che è arco di costo minimo, avremo che $w(e) \leq w(f)$. 
Quindi costruiamo un MST $T'$ che non contiene $f$, ma che contiene $e$.
Così diremo che $T$ sarà l'MST che contiene $e$ arco di peso minimo. 

3. L'algoritmo di Prim parte da un nodo sorgente $s$ e prende l'arco di costo minimo tra quelli incidenti a $s$. Usa la coda con priorità, dove si tiene 2 insiemi distinti: nodi esplorati da $S$ e nodi non esplorati da $S$, questi saranno i due sottoinsiemi di nodi che formeranno il nostro CUT. Essendo gli archi ordinati in ordine crescente di costo, il primo arco che sceglierà sarà per forza l'arco di costo minimo contenuto nell'MST per la CUT-Property. 
