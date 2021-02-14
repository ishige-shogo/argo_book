def cell(h, w):
    way = (h - 1) + (w - 1) + 1
    return way

print(cell(10, 10))

#ここからAtCoderの問題解いてます

a = int(input())
# スペース区切りの整数の入力
b, c = map(int, input().split())
# 文字列の入力
s = input()
# 出力
print("{} {}".format(a+b+c, s))

V, T, S, D = map(int, input().split())

def vanish(V, T, S, D):
    m = D//V
    if (m < T) or (m > S):
        return "Yes"
    else:
        return "No"

print(vanish(V, T, S, D))

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A, B, C = map(int, input().split())

if (A > B) or ((A == B) and (C == 1)):
    print("Takahashi")
else:
    print("Aoki")

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

N, X = map(int, input().split())
A = list(map(int, input().split()))

print(" ".join([str(i) for i in A if i != X ]))