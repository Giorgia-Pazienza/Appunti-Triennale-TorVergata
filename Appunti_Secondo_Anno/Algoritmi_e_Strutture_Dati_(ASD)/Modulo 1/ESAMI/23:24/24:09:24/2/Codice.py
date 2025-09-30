def Fabbisogno(A, L):
    n = len(A)
    B = []
    sommaCorrente = 0 
    for i in range(n):
        sommaCorrente += A[i]
        B.append(L + sommaCorrente)
    return B
    
A = [ 2, 8, 0, 3, 25]
y = Fabbisogno(A, 3)
print(y)
    
def query(x):
    if y[0] >= x:
        return 0
    giorno = RicercaBinaria(y, x, 1 , len(y))
    return giorno

def RicercaBinaria(B, x, i, j):
    if i > j:
        return -1
    m = (i + j)//2
    if B[m] >= x and B[m-1] < x:
        return m
    elif(B[m] > x):
        return RicercaBinaria(B,x,i,m-1)
    else:
        return RicercaBinaria(B,x,m+1,j)


soluzione = query(15)
print(soluzione)
