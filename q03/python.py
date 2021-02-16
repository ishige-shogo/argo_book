N = 12

def conv(number, i, v, x):
    result = ""
    if number == 9:
        result += i + x
    elif number == 4:
        result += i + v
    else:
        result += v * (number // 5)
        number = number % 5
        result += i * number
    return result

def roman(number):
    m, number = divmod(number, 1000)
    c, number = divmod(number, 100)
    x, number = divmod(number, 10)
    result = "M" * m
    result += conv(c, "C", "D", "M")
    result += conv(x, "X", "L", "C")
    result += conv(number, "I", "V", "X")
    return len(result)

n = 1
way = 0
while n <= 3999:
    if roman(n) == N:
        way += 1
    n += 1

print(way)