N = 45

#パスカルの配列作成
pascal = [0] * (N + 1)
pascal[0] = 1

N.times do |n|
    (n + 1).downto(1) do |i|
        pascal[i] += pascal[i - 1]
    end
end

def count(number)
    money = [10000, 5000, 2000, 1000, 500, 100, 50, 10, 5, 1]
    coins = 0
    money.each do |m|
        coin, number = number.divmod(m)
        coins += coin
    end
    coins
end

puts pascal.map{|n| count(n)}.sum

