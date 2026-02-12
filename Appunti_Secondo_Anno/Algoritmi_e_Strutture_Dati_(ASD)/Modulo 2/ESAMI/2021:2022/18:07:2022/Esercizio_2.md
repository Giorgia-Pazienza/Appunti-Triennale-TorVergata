#TESTO: 

Si consideri la struttura dati Quick-Find con euristica union-by-size per gestire insiemi 
disgiunti su un universo di n elementi.

1. Si fornisca un esempio di una sequenza di 3 operazioni di union in cui ogni singola operazione di union ha costo Θ(n).
2. Si enunci in modo preciso le prestazioni della struttura dati, in termini di costi delle operazioni della struttura dati. 

---

#SOLUZIONE: 

1. Ogni operazione di union nella QuickFind con euristica costa O(log n), tranne quando unisco 2 alberi con la stessa cardinalità (come in foto)
![Sequenza](Testo.png "Testo")

2. La QuickFind con euristica union-by-size può svolgere 3 operazioni: 
- MAKESET: crea un albero e costa O(1)
- UNION: unisce due alberi A e B, inserendo gli elementi dell'albero di cardinalità minore come figli dell'albero di cardinalità maggiore. Questa operazione costa O(log n) [costo ammortizzato]
- FIND: cerca il nome dell'insieme all'interno della radice e costa O(1).
