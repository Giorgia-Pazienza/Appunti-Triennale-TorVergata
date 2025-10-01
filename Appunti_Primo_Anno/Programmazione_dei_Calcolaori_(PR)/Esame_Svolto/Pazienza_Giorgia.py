#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Jan 23 19:53:15 2024

@author: utente
"""

''' TRACCIA:
    
    Si scriva una funzione, denominata mode, 
    che prenda in input una lista di numeri e 
    restituisca la lista degli elementi di a 
    che compaiono più frequentemente.
    
'''


def mode(numbers):
    
    # Inizializzo una lista per contare le occorrenze
    count_list = {}  # costo spaziale: O(1), costo temporale: O(1)

    # Conteggio le occorrenze
    for num in numbers:  # costo spaziale: O(1), costo temporale: O(n)
        if num in count_list:  # costo spaziale: O(1), costo temporale: O(1)
            count_list[num] += 1  # costo spaziale: O(1), costo temporale O(1)
        else:
            count_list[num] = 1  # costo spaziale: O(1), costo temporale: O(1)

    # Andiamo a trovare il numero massimo di occorrenze
    max_occorrenza = max(count_list.values())  # costo spaziale: O(1), costo temporale: O(n)

    # Creo una lista con gli elementi che hanno il massimo numero di occorrenze
    most_frequent = [num for num, count in count_list.items() if count == max_occorrenza]  # costo spaziale: O(n), costo temporale: O(n)

    # Restituisco la lista degli elementi più frequenti

    return most_frequent  # costo spaziale: O(n), costo temporale: O(1)

#Esempio di lista
numbers_list = [1, 2, 2, 3, 4, 4, 4, 5, 5]

result = mode(numbers_list) #chiamo la funzione mode sulla lista

print("Elementi più frequenti:", result) #stampo il risultato

''' Inizializzo un dizionario vuoto per tener traccia delle occorrze
 Per conteggiare le occorrenze uso un cilco for, con la funzione if 
 se il numero è già presente nel dizionario, 
 viene incrementato il suo conteggio. 
 Altrimenti, viene aggiunto al dizionario con un conteggio di 1
 Utilizzando la funzione max, viene determinato il numero 
 massimo di occorrenze tra tutti i numeri presenti nel dizionario
 infine creo una lista degli elementi più  frequenti 
 e usando il return la funzione mi restituisce degli elementi più frequenti'''
 
 
 
#Costo complessivo: O(n+m) dove 
#n è La lista di partenza ed 
#m è il carattere + frequente con max occorrenza
 
 
 
 
 