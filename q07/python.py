#Rubyより実行時間が2倍速い

N = 15

def nPr(n, r):
    result = 1
    i = n
    while i >= (n - r + 1):
        result *= i
        i -= 1
    return result

way = 0
s = 0
while s <= (N - 1):
    way += (N - s) * nPr(N, s - 1) * s
    s += 1

print(way)

