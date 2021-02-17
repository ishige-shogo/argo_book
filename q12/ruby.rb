pi = 3.14159265358
mother = 1

while true do
    (mother * 3).upto(mother * 4) do |i|
        if pi.to_s == format("%.11f", (i/mother))
            puts mother
            exit
        end
    end
    mother += 1
end


# 解法
N = 11
q = 1

pi = "314159265358"[0, N + 1].to_i

pow = 10 ** N

while true do
    if q * pi / pow != q * (pi + 1) / pow
        if q * (pi + 1) % pow > 0
            puts q
            exit
        end
    end
    q += 1
end

M = 202010101

puts (M.to_s)[0, 6].to_i 

puts (Math.log(M, 10) + 1).to_i

