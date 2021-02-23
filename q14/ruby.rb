
#1円は一桁目で5以下ならその数字、6以上ならその数字－5。

#5円は一桁目が6以上なら1枚、5以下なら2枚。

#10円は2桁目の部分、5以下ならその数字、6以上ならその数字ー５
#また5円の枚数によって変わる。一桁目が5以下なら－１、6以上ならそのまま。

#50円は2桁目の部分。10円の残り数値が5以下なら2枚、6以上なら1枚。

#100円は・・・・と続く


def money_caluculeter(yen)
    a = yen.to_s.split(//).reverse
    a_size = a.length
    coins = []

end

#------------------------------------------------------------------

def money_cal(yen)
    a, b = yen.divmod(10000)
    c, d = b.divmod(5000)
    e, f = d.divmod(2000)
    g, h = f.divmod(1000)
    i, j = h.divmod(500)
    k, l = j.divmod(100)
    m, n = l.divmod(50)
    o, q = n.divmod(10)
    r, s = q.divmod(5)
    t, u = s.divmod(1)
    coins = [a, c, e, g, i, k, m, o, r, t]
    return coins
end

p money_cal(11254)

#-------------------------------------------------------------
#解法例
N = 45678
coins = [10000, 5000, 2000, 1000, 500, 100, 50, 10, 5, 1]
result = N

10.downto(1) do |i|
    coins.combination(i) do |coin|
        remain = N - coin.sum
        next if remain < 0
        cnt = coin.length
        coin.each do |c|
            r = remain / c
            cnt += r
            remain -= c * r
        end
        result = [cnt, result].min
    end
    break if result < N
end

puts result

#---------------------

N = 45678
coins = [10000, 5000, 2000, 1000, 500, 100, 50, 10, 5, 1]

used = [0] * 10
remain = N

9.downto(0) do |i|
    if remain > coins[i]
        used[i] = 1
        remain -= coins[i]
    end
end

0.upto(9) do |i|
    used[i] += remain / coins[i]
    remain %= coins[i]
end

0.upto(8) do |i|
    if (used[i] == 0) && (coins[i + 1] * used[i + 1] >= coins[i])
        used[i] = 1
        used[i + 1] -= coins[i] / coins[i + 1]
    end
end
puts used.sum
