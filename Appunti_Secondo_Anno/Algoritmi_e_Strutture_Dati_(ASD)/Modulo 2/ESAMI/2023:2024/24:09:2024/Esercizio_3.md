
n giorni 
Per ogni giorno i abbiamo un esame con dei crediti C_i e per prepararlo servono almeno dei giorni g_i
Sai studiare solo un esame alla volta quindi, quando finisci un esame studi per l'altro
Vogliamo massimizzare il numero di crediti che puoi ottenere con gli esami

---

# SOLUZIONE

OPT[i] = massimo numero di crediti che puoi acquisire prendendo il giorno i 

Preso il giorno i dove sto avrò c_i + OPT[ i - g_i] 

Quindi avremo la seguente l'Equazione di Bellman = { max (i > 0) {OPT[i]}}

NON DEFINITO BENE, DA RICONTROLLARE