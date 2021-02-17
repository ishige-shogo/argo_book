
# pi = 3.141

# mother = 1

# while True:
#     child = mother * 3
#     while child < mother * 4:
#         if str(pi) == '{:.3f}'.format(child / mother):
#             print(mother)
#             exit
#         child += 1
#     if str(pi) == '{:.3f}'.format(child / mother):
#         exit
#     mother += 1
import math

N = 11
q = 1
pi = 314159265358

pow = 10 ** N

while True:
    if math.floor(q * pi / pow) != math.floor(q * (pi + 1) / pow):
        if math.floor(q * (pi + 1) % pow) > 0:
            print(q)
            break
    q += 1

