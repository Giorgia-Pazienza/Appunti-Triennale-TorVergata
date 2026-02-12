#TESTO: 

Immaginate di impelmemtare l'algoritmo di Kruskal con un'altra struttura dati Union Find 
i cui costi delle operazioni sono: la MAKESET e la UNION hanno costo costante, mentre la FIND 
costa $$O(log log n)$$. Quale sarebbe la complessità dell'algoritmo di Kruskal?

---

#SOLUZIONE:

L'algoritmo di Kruskal costa $$O( costo ordinamento archi + costo UF)$$

Il costo della Union Find per la seguente sequenza $$n$$ MAKESET, $$m$$ FIND, $$n - 1$$ UNION in questo caso [quindi con i seguenti costi forniti dal testo: MAKESET $$O(1)$$, UNION $$O(1)$$ FIND $$O(log log n)$$] è $$O( n + n - 1 + m log log n )$$, che asintoticamente sarà $$O(n + m log log n)$$

