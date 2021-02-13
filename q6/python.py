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

