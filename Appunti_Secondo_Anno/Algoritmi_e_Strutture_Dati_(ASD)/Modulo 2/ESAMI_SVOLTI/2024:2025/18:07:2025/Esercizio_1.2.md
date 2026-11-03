# TESTO: 

Si consideri la seguente affermazione e si dica se è (sempre) vera o (se può essere) falsa, 
argomentando la risposta. 
Claim: Sia $G = (V,E,w)$ un grafo non orientato e pesato. Sia T un MST di G e sia $e$ un arco di T
Si consideri il grafo $G' = (V,E,w')$ ottenuto da G abbassando il peso dell’arco $e$ ha un valore 
$w'(e) < w(e)$. Allora T è un MST anche di G'.

---

# SOLUZIONE: 

L'MST T relativo al Grafo $G$, non è un MST relativo a $G'$, poichè il peso dell'arco $e$ è diverso dal peso dell'arco $e$ del grafo G. 
Però esisterà un MST $T^*$ reativo a $G$, ma con costo totale diverso da $T$.
Infatti $cost(T^*) \leq cost (T)$.
