N = 30

def check(number):
    light = [6, 2, 5, 5, 4, 5, 6, 3, 7, 6]
    count = light[number//10] + light[number%10]
    return count 

lights = []
i = 0
while i < 60:
    lights.append(check(i))
    i += 1


way = 0

h = 0
while h < 24:
    m = 0
    while m  < 60:
        s = 0
        while s < 60:
            if lights[h] + lights[m] + lights[s] == N:
                way += 1
            s += 1
        m += 1
    h += 1
            

print(way)