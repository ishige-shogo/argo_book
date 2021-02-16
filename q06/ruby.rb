
# squareメソッド(できる正方形の数, 長辺の最大値) => 長辺・短編のパターン数
def square(n, m)

    area_count = 1
    way = 0
    z = Array.new()

    2.upto(m) do |x|
        1.upto(x-1) do |y|
            z[0] = x
            z[1] = y
            until z[0] == z[1]
                if z[0] > z[1]
                    z[0] = z[0] - z[1]
                    area_count += 1
                else
                    z[1] = z[1] - z[0]
                    area_count += 1
                end
            end
            way += 1 if area_count == n
            area_count = 1
        end
    end

    return way
end

puts square(20, 1000)


# 別解
W, N = 1000, 20

# cutメソッド(横の長さ, 縦の長さ, できる正方形の枚数) =>「true/false」
def cut(w, h, n)
    return (n==0) if w == h
    w, h = h, w if w > h
    q, r = h.divmod(w)
    if (n-q < 0) || (r == 0)
        return(n - q == 0)
    else
        return cut(w, r, n - q)
    end
end

cnt = 0
1.upto(W) do |i|
    i.upto(W) do |j|
        cnt += 1 if cut(i, j, N)
    end
end

puts cnt

