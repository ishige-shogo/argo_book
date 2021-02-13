N = 45

pascal = [0] * (N+1)
pascal[0] = 1

i = 0
while i < N:
    s = i + 1
    while s >= 1:
        pascal[s] += pascal[s - 1]
        s -= 1
    i += 1

def count(number):
    money = [10000, 5000, 2000, 1000, 500, 100, 50, 10, 5, 1]
    coins = 0
    for m in money:
        coin = number// m
        number = number%m
        coins += coin
    return coins

coin_count = [0] * (N+1)
c = 0
while c <= N:
    coin_count[c] = count(pascal[c])
    c += 1

print(sum(coin_count))
