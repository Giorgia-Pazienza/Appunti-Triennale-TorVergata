# TESTO

Si dica quale struttura dati viene utilizzata nell’implementazione efficiente dell’algoritmo di Kruskal, quali operazioni mette a disposizione la struttura dati e come queste vengono usate nell’algoritmo. 

---

# SOLUZIONE

La Struttura Dati che viene utilizzata dal'algoritmo di Kruskal sono le UNION FIND. Infatti il costo dell'algoritmo di Kruskal è $$O( \text{costo archi} + \text{costo operazioni UF})$$ dove $$O(m logn) + UF$$
La seguente complessità che associamo alle operazioni di ```UNION FIND``` si riferisce a: 
- ```QUICKUNION``` con Euristica 

dove $n$ MAKESET, $m$ FIND, $n-1$ UNION costerà $$O( n + m log n + n - 1) = O(n + m log n)$$

- ```QUICKFIND``` con Euristica 

dove $n$ MAKESET, $m$ FIND, $n-1$ UNION costerà $$O( n + m + n log n - log n) = O(m + n log n)$$