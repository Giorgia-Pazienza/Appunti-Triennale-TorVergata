def BucketSort(X, k):
    
    Y = [] * k
    n = len(Y)
    m = len(X)

    for i in range(0, n-1):
        Y[i] = []

    for j in range(0, m-1):
        Y.append(chiave(X[i]))
    
    for i in range(0, n):
        X = Y[i]