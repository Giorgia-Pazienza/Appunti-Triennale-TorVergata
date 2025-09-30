def SommaNumeri(A):
    n = len(A)
    MergeSort(A, 0, n)

    sommaPre = A[0] + A[n-1] 
    
    for i in range(0, n//2):
        if A[i] + A[n -1 - i] != sommaPre:
            return False
    return True 

    
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
    

A = [5, 6, 2, 3, 4, 1]
print(SommaNumeri(A))

