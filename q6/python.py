# 約4秒、実行時間遅すぎだ(笑)
def square(n, m):
    area_count = 1
    way = 0
    z = [0, 0]

    x = 2
    while x <= m:
        y = 1
        while y <= (x - 1):
            z[0] = x
            z[1] = y
            while z[0] != z[1]:
                if z[0] > z[1]:
                    z[0] = z[0] - z[1]
                    area_count += 1
                else:
                    z[1] = z[1] - z[0]
                    area_count += 1
            if area_count == n:
                way += 1
            area_count = 1
            y += 1
        x += 1
    return way

print(square(20, 1000))

#別解 Rubyより遅い

W, N = 1000, 20

def cut(w, h, n):
    if w == h:
        return (n==0)
    if w > h:
        w, h = h, w
    q, r = divmod(h, w)
    if (n-q < 0) or (r == 0):
        return (n-q == 0)
    else:
        return cut(w, r, n - q)

cnt = 0
i = 1
while i <= W:
    s = i
    while s <= W:
        if cut(i, s, N):
            cnt += 1
        s += 1
    i += 1

print(cnt)