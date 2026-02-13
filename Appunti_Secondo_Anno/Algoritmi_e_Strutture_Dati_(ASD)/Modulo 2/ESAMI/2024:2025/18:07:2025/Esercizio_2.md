# TESTO:

Si consideri il problema del calcolo del taglio di capacità minima - Minimum cut problem.

1. Si definisca formalmente il problema. 

2. Si descriva come è possibile, dato un flusso massimo, calcolare in tempo lineare un taglio di capacità minima. 

3. Si discuta in modo conciso e preciso la correttezza dell’algoritmo fornito nel punto precedente.

---

# SOLUZIONE:

1. Il problema del Minimum Cut Problem, detto anche problema del minimo taglio. Consiste nel trovare in una rete di flusso la capacità minima del taglio. Questo avviene quando sulla rete residua $G_f$, creata a partire dalla rete di flusso G, terminerà l'algoritmo di Ford-Fulkerson. Quando succede ciò non ci sono più cammini aumentanti. Faccio una visita BFS e i nodi saranno divisi in due sottoinsiemi distinti:
- A = contenenti i nodi raggiungibili da s
- B = contenennti i nodi non raggiungibili da s

2. Per il problema del MAX-FLOW MIN-CUT. Dopo che termina Ford-Fulkerson faccio una visita BFS che mi permetterà di determinare il CUT. Questa visita mi costa O(n)

3. ?? (lo dico gia su?)