
#最後の一桁の計算
def conv(number, i, v, x)
    result = ""
    if number == 9
        result += i + x
    elsif number == 4
        result += i + v
    else
        result += v * (number / 5)
        number = number % 5
        result += i * number
    end
    result
end

def roman(number)
    m, number = number.divmod(1000)
    c, number = number.divmod(100)
    x, number = number.divmod(10)
    result = "M" * m
    result += conv(c, "C", "D", "M")
    result += conv(x, "X", "L", "C")
    result += conv(number, "I", "V", "X")
    result
end

way = Hash.new{0}
1.upto(3999){|n|
    way[roman(n).size] += 1
}

puts way[12]




m, n = 10.divmod(3)

puts m # => 3
puts n # => 1

puts 10.divmod(3)

sports = ["サッカー", "野球", "バスケ"]

a, b, c = sports

puts a
puts b
puts c

d, e = sports

puts d
puts e