def Jaccard(A, B):
    n = len(A)
    m = len(B)
    i = 0
    j = n
    intersezione = 0
    
    MergeSort(B, i, j)
    
    for i in range(0, n):
        x = A[i]
        y = RicercaBinaria(B, x, 0, n)
        if y != -1:
            intersezione += 1
        
    return intersezione/ (n + m - intersezione)


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
        
        
def MergeSort(A,i,f):
    if(i <= f-2):
        m = (i+f)//2
        MergeSort(A, i, m)
        MergeSort(A, m, f)
        Merge(A, i, m, f)
    
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
    
A = [ 1, 2, 0, 4, 5, 6]
B = [10, 0, 3, 4, 2, 7]

print(Jaccard(A, B)) 
