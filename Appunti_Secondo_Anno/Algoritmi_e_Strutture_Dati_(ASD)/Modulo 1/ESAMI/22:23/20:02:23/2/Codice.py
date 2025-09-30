def Oracolo(A):
    n = len(A)
    B = []
    posizione_pre = -1
    
    if A[n-1] == 0:
        B.append(posizione_pre)
    else:
        B.append(n-1)
        posizione_pre = n-1
    
    
    for i in range(n-2, 0, -1):
        if A[i] == 1:
            B.insert(0, i)
            posizione_pre = i
        else:
            B.insert(0, posizione_pre)
    return B

def Query(B, i):
    return B[i]

A = [ 1, 0, 0, 1, 1, 1, 0, 1]
risultato = Query(Oracolo(A), 6)
print(risultato)