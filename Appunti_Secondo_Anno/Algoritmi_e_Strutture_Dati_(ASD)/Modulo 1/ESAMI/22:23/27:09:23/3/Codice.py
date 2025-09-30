def ZeriContigui(A):
    i = 0
    n = len(A)
    B = [-1 for i in range(len(A))]
    count0 = 0
    m = len(B)

    for i in range(n-1, -1, -1):
        if A[i] == 0:
            count0 += 1
        else:
            B[i] = 0
            B[i+1] = count0
            count0 = 0
    B[0] = count0

    for i in range(1, m):
        if B[i] == -1:
            B[i] = B[i - 1]
    return B


def Query(B, i):
    return B[i]


A = [1, 0, 1, 0, 0, 1, 0, 0, 0]

soluzione = Query(ZeriContigui(A), 1)
print(soluzione)