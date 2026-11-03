# TESTO

Si consideri il caso in cui ogni arco e di G ha un costo $c_e ∈ \{1,2\}$, e si assuma che ci siano almeno 3 archi di costo 1 in G. Si consideri la seguente affermazione: Il costo dell’MST di G è al più $2n − 4$. Dire se l’affermazione è vera o falsa motivando la risposta.

---

# SOLUZIONE

L'MST T, relativo a G, costa la somma minima di tutti gli archi di G.

Essendo che 3 archi costano 1, sia l'algoritmo di Prim che quello di Kruskal sceglieranno come primi archi quei 3. Quindi l'MST T che è formato da n-1 archi, avrà (dopo che l'algoritmo sceglie quei 3 di peso 1) $(n - 1) - 3$ archi, quindi l'MST T avrà in quell'istante $n - 4$ archi. 

Essendo che in G i pesi sono sia 1 che 2, il resto degli archi avrà costo massimo possibile 2, quindi avremo: $2(n - 4) = 2n - 8$. Questo $2n - 8$ rappresneta il costo degli archi di peso 2. 

Gli archi di peso 1 sono 3 quindi andremo a calcolarci: $$\text{(costo archi di peso 1 + costo archi di peso 2)}$$ $$3 + (2n - 8)$$ $$ 2n - 5$$

Siccome sappiamo che $2n − 5 < 2n − 4$ allora diremo che il costo dell'MST T è al più $2n - 4$