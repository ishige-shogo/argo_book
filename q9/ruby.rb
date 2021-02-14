# 8進数で2桁以上のナルシシスト数を小さいほうから8個求める

#8進数のナルシシスト数かを判別
def cool(n)
    m = n.to_s(8).split(//)
    k = m.map{|i| i.to_i ** m.size}
    o = k.map{|s| s.to_s(8).to_i}
    return o.sum == n.to_s(8).to_i
end

cool_numbers = []
8.upto(10000) do |i|
    if cool(i)
        cool_numbers.append(i.to_s(8))
    end
end

puts cool_numbers

cool_n =[]
count = 0
8.upto(100) do |n|
    if cool(n)
        cool_n.append(n)
        count += 1
    end
    break if count==2
end

puts cool_n


number = 0
count = 0
cool_numbers = []
while count < 8 do
    if cool(number) && number >= 7
        cool_numbers.append(number.to_s(8))
        count += 1
    end
    number += 1
end

puts cool_numbers
