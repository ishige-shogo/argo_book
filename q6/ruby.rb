
area_count = 0


2.uptp(8) do |x|
    1.upto(x-1) do |y|
        until x == y
            if x > y
                x = x - y
                area_count += 1
            else
                y = y - x
                area_count += 1
            end
        end
    end
end

puts area_count

2.upto(8) do |x|
    1.upto(x-1) do |y|
        z = x - y
    end
end
puts z