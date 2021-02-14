#pythonは進数変換の問題は今のところきつそう
#余計な接頭語がついてしまう

def cool(n):
    cools = list(oct(n))
    del cools[:2]
    numbers = list()
    for i in cools:
        numbers.append(int(i, base = 8) ** len(cools))
    v = list(oct(sum(numbers)))
    del v[:2]
    return v == cools

count = 8
cool_numbers = list()

while len(cool_numbers) < 8:
    if cool(count):
        cool_numbers.append(oct(count))
    count += 1

print(cool_numbers)