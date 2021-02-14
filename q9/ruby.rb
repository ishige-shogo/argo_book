# 8進数で2桁以上のナルシシスト数を小さいほうから8個求める

#8進数のナルシシスト数かを判別
def cool(n)
    m = n.to_s(8).split(//)
    k = m.map{|i| i.to_i ** m.size}
    return k.sum.to_s(8) == n.to_s(8)
end

number = 8
cool_numbers = []
while cool_numbers.size < 8
    cool_numbers.append(number.to_s(8)) if cool(number)
    number += 1
end

puts cool_numbers



puts [1,2,3,4].sum

puts 17.to_s(3).split(//)

m = [1,2,2]
k = m.map{|i| (i.to_i ** m.size).to_s(3).to_i}
puts k.sum

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
