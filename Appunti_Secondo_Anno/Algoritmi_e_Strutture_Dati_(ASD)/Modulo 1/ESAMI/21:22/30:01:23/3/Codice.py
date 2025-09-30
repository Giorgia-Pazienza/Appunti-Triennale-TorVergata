
def SommaVettori(A, B):
    i = 0
    n = len(A)
    sommaA = 0
    sommaB = 0
    
    sommaTotaleB = sum(B) 
    
    for i in range(n):
        
        sommaA += A[i]
        sommaB += B[i]
        
        if sommaA < sommaTotaleB - sommaB:
            i += 1
        else:
            return i    
      
A = [ 4, 0, 12, 1, 0]
B = [ 6, 4, 1, 1, 10]

soluzione = SommaVettori(A, B)

print(soluzione)
