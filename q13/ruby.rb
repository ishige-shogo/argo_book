
#型となる部分
number = [1,3,2,4]
ary_number = number.first(number[0]).reverse
ary_number.each_with_index do |num, i|
    number[i] = num
end
puts number



#-------------------------------------------------------
#ここから問題

