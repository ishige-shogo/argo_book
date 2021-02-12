# 入力例       => 出力例
# [1,2,3,4,5] => 1~5
# [3,4,5]     => 3~5
# [1,3,4,5]   => 1・3~5
# [1,2,4,5]   => 1・2・4・5

N = [1,2,4,5,6,8,9,10,13,14,15,17,18]

def label(numbers)
    i = 0
    label_numbers = Array.new()
    numbers.each do |n|
        if (numbers).include?(n-1) && (numbers).include?(n+1)
            label_numbers[i] = "~"
        else
            label_numbers[i] = n
            label_numbers[i+1] = "・"
            i += 1
        end 
        i += 1
    end

    s = 0
    new_label_numbers = Array.new()
    label_numbers.each do |l|
        if label_numbers[s+1] == "~"
            new_label_numbers[s] = ""
        else
            new_label_numbers[s] = l
        end
        s += 1
    end
    new_label_numbers[new_label_numbers.length - 1]=""
    return new_label_numbers.join
end

puts label(N)


#別解

def level_label(ary)
    ary
      .chunk_while { |a, b| a + 1 == b }
      .map { |a|
        case a.size
        when 1 then a[0]
        when 2 then "#{a[0]}・#{a[1]}"
        else "#{a[0]}~#{a[-1]}"
        end
      }
      .join("・")
  end

puts level_label([1,2,4,5,9,6])


N = [] 

def level_label(numbers_array)
    numbers_array.uniq.sort
        .chunk_while{ |a, b| a.succ == b }
        .map{ |n| 
            case n.size
            when 1 then n[0]
            when 2 then "#{n[0]},#{n[1]}"
            else "#{n[0]}-#{n[-1]}"
            end
        }
        .join(", ")
end

puts level_label(N)