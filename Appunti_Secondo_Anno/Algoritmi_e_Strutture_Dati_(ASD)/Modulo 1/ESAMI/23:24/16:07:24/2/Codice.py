def SOS(A):
    n = len(A)
    B = []
    for i in range(0, n):
        if A[i] == 1:
            B.append(i)
        else:
            B.append(None)

    for j in range(n-1, -1, -1):
        if B[j] == None and j == n-1:
            B[j] = 0
        if B[j] == None:
            B[j] = B[j + 1]
        if B[j] == None and B[j+1] == None:
            B[j] = 0
    return B 

A = [1, 0, 1, 0, 1, 0]
soluzione = SOS(A)

print(soluzione)