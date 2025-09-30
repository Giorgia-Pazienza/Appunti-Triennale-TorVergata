
def TrovaIndice(A):
    n = len(A)
    i = 0
    sommaTotale = sum(A)
    sommaSinistra = A[i]
    
    sommaDestra = sommaTotale - sommaSinistra
    if sommaSinistra > sommaDestra:
        return i
    
    
    for i in range(1,n):
        sommaSinistra += A[i]
        sommaDestra = sommaTotale - sommaSinistra
        if sommaSinistra > sommaDestra:
            return i
        else:
            i += 1
    

A = [ 2, 3, 15, 1, 5, 4, 7, 3]
soluzione = TrovaIndice(A)
print(soluzione)