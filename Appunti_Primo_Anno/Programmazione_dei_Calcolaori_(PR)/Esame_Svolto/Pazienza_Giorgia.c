/* TRACCIA:

Si scriva una funzione avente il seguente prototipo:
char *str_cat(char *a, int n, char *b);
dove a e b sono due stringhe e n è la dimensione dell'array contenente a. 
La funzione deve concatenare b ad a , modificando a.
Restituisce la stringa a modificata.

*/

#include <stdio.h>
#include <string.h>

char *str_cat(char *a, int n, char *b) {
    
    // Calcolo la lunghezza di a
    int len_a = strlen(a);

    // Verifico lo spazio nell'array a per poi concatenare b
    if (len_a + strlen(b) < n) {
        
        // Concateno b ad a
        strcat(a, b);

    } else {
        // Se non c'è spazio sufficiente, stampo un messaggio di errore.
        printf("Errore: Impossibile concatenare, dimensione insufficiente di a.\n");
    }

    // Restituisce la stringa a modificata
    return a;
}

int main() {

    // un esempio di stringhe per l'utilizzo della funzione
    char a[20] = "Ciao ";
    char b[] = "sono Giorgia";

    printf("Prima: %s\n", a);

    // Concatena b ad a 
    str_cat(a, sizeof(a), b);

    printf("Dopo: %s\n", a);

    return 0;
}

/* COSTI CODICE:

il costo temporale è la quantità di tempo impiegata 
da un algoritmo o da un programma.
Il costo temporale della seguente funzione è O ( n + m + k ), poichè 
la funzione 'int len_a = strlen(a)' ha costo O ( n )
il costo di 'if (len_a + strlen(b) < n)' è O ( m )
la funzione 'printf("Errore: Impossibile concatenare, dimensione insufficiente di a.\n");' ha costo O ( k )

Il costo spaziale è la quantità di memoria o spazio di archiviazione utilizzato da un algoritmo o da un programma. 
Il costo spaziale della seguente funzione è O ( 35 ), poichè 
l'istruzione 'char a[20] = "Ciao ";' ha costo O (20)
l'istruzione 'char b[] = "sono Giorgia";' ha costo O ( 15 )
Quindi il costo spaziale sarà O ( 20 + 15 ) = O (35)

  */


/* la funzione strcat è una funzione della libreria string 
che è utilizzata per concatenare 2 stringhe.
La funzione str_cat prende tre argomenti:
a: una stringa di destinazione (array di caratteri).
n: la dimensione massima di a.
b: la stringa da concatenare. 
poi mi calcolo la lunghezza della stringa a 
uso if per verificare lo spazio disponibile.
poi concateno:
- se lo spazio non ne dispobibile 
stampo un messaggio di errori. 
- in caso contrario restituisco a  */