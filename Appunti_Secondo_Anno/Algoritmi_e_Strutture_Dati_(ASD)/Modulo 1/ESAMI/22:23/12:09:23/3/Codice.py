def FeliceAlQuadrato(A):
    n = len(A)
    MergeSort(A, 1, n)
    for i in range(1, n):
        x = A[i]**2
        j = RicercaBinaria(A, x, 1, n)
        if j != -1:
            return True
    return False


def RicercaBinaria(A, x, i, j):
    if i > j:
        return -1
    m = (i + j)//2
    if A[m] == x:
        return m
    elif(A[m] > x):
        return RicercaBinaria(A,x,i,m-1)
    else:
        return RicercaBinaria(A,x,m+1,j)


def Merge(A,i,m,f):
    X = []
    k1 = i
    k2 = m
    while (k1 < m and k2 < f):
        if (A[k1] < A[k2]):
            X.append(A[k1])
            k1 += 1
        else: 
            X.append(A[k2])
            k2 += 1
    X += A[k1:m] + A[k2:f]
    for j in range(len(X)):
        A[i+j]= X[j] 
def MergeSort(A,i, f):
    if(i <= f-2):
        m = (i+f)//2
        MergeSort(A, i, m)
        MergeSort(A, m, f)
        Merge(A, i, m, f)
    

A= [2, 3, 5, 4, 6, 9, 36, 25]

risultato= FeliceAlQuadrato(A)
print(risultato)
