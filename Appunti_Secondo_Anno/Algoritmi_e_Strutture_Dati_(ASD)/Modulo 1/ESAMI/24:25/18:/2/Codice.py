
'''
def CalcolaAltezza(A):
    n = len(A)
    
    k = max(A)
    B = [0] * k

    nRettangoli = 0
    
    for i in range(n):
        B[A[i]] += 1
        return B
    

    for j in range(len(B)):
        nRettangoli = B[j]
        indice = j
        if B[j+1] > nRettangoli and j+1>indice:
            nRettangoli = B[j+1]
            indice = j+1
    return nRettangoli, indice
    
        
A = [6, 4, 3, 3, 4, 6, 1, 2]
print(CalcolaAltezza)
'''

A = [6, 4, 3, 3, 4, 6, 1, 2]

def CalcolaAltezza(A):

    #Mi calcolo il massimo di A
    k = max(A)        

    #Lunghezza di A
    n = len(A)

    #Avvio un ciclo che fa una scansione per ogni k e si crea un array B
    for k in range(0, k):
        B = []

        for i in range(0, n-1):
            if A[i] == k:
                B.append(A[i])
            else:
                i += 1

    for j in range(0, len(B)):
        indiceMinimo = min(B)
        indiceMassimo = max(B)
        Area = k (indiceMinimo - indiceMassimo)

        return Area


'''

6 (5 - 0) = 30 
4 (4 - 1) = 12
3 (3 - 2) = 3

1 e 2 non possiamo calcolare l'area

A = [6, 4, 3, 3, 4, 6, 1, 2]
i = [0, 1, 2, 3, 4, 5, 6, 7]

per ogni k mi creo un array K_1, ..., K_k
dove inserisco in K[i] = tutti gli indici di A che hanno k = n

'''

z = CalcolaAltezza(A)
print(z)  