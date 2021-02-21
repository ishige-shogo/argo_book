
V, T, S, D = map(int, input().split())

if ((V * S) >= D) and ((V * T) <= D):
    print("No")
else:
    print("Yes")