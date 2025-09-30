def k_picco(A):
    n = len(A)
    k = 0
    cresce = 0
    decresce = 0
    for i in range(0, n-1):
        if A[i] > A[i-1]:
            cresce += 1
        if A[i] > A[i+1]:
            decresce += 1

        if A[i] < A[i-1] and A[i] < A[i+1]:
            if cresce > k and decresce > k:
                k = min(cresce, decresce)
            cresce = 0
            decresce = 0
    
    return k

#A = [2, 4, 8, 11, 7, 5, 1, 4, 5, 12, 6, 5, 3, 4, 5, 15, 3, 1]

A = [ 0, 1, -1, 2, 3, 4, 5, 6, 2, 0, 1, 2, 3, 2, 6, 7, 8, 9, 10, 9, 8, 7, 6, 1, 2, 1, 2]
soluzione = k_picco(A)
print(soluzione)

