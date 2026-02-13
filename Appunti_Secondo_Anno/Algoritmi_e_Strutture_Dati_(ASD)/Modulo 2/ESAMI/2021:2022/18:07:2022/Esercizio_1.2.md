# TESTO: 

Si consideri il grafo G completo con $n$ nodi, chiamati $0,1, ... , n - 1$, in cui il 
costo del generico arco $(i, j)$ è $w(i,j) = i + j$
Come è fatto e quanto costa un MST di G?

---

# SOLUZIONE: 

MST costa 
$$
    c(T) = \text{Sommatoria del costo degli archi}
$$
Se è completo, avrò un MST con $n - 2$ nodi.
Il costo dell'MST sarà dato dal costo minimo del peso degli archi. 
Immaginiamo di avere un grafo con 3 nodi (tipo un triangolo) avremo un MST con 3 nodi 
${i, j, z}$ e 2 archi (di costo minimo). La somma sarà data da minimo tra 
${(i + j), (i+z), (j+z)}$.