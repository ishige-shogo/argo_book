def check(number):
    light = [6, 2, 5, 5, 4, 5, 6, 3, 7, 6]
    count = light[number//10] + light[number%10]
    return count
print(check(25))    

