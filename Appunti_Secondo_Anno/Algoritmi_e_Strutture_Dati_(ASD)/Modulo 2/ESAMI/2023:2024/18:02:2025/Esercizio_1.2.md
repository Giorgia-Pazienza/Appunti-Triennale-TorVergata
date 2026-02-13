# TESTO:

Si consideri la struttura dati QuickUnion con euristica union by size. Si mostri una 
sequenza di operazioni di $n$ makeSet e $n − 1$ union in cui l’albero ottenuto abbia 
altezza $Θ(log n)$

---

# SOLUZIONE: 

$n$ MAKESET 
$n - 1$ UNION 
l'albero ha altezza $O(log n)$, quindi la find che farò prima della Union mi costerà altezza dell'albero ovvero $O(log n)$. 

Avendo $n$ MAKESET, $n - 1$ UNION e $m$ FIND la mia sequenza con la QUICKUNION usando l'euristica mi costerà $O(n + n - 1 + m log n)$, asintoticamente sarà $$O(n + m log n)$$. 