N = 7

def vote(n):
    if n <= 2:
        return 1
    way = 1
    way += vote(n - 1)
    i = 2
    while i <= (n - 1):
        way += vote(i) * vote(n - 1)
        i += 1
    return way

print(vote(N))