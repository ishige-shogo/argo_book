N = 15

def nPr(n, r)
    result = 1
    n.downto(n - r + 1) do |i|
        result *= i
    end
    return result
end

way = 0
0.upto(N - 1) do |s|
    way += (N - s) * nPr(N, s - 1) * s
end

puts way


#別解(理解がむずかしい)

N = 15
cnt = Array.new(N){0}

cnt[0] = 1
1.upto(N) do |i|
    (i - 2).times do |j|
        cnt[i - j - 1] = cnt[i - j - 2] * i
    end
    cnt[1] = i - 1
end

sum = 0
cnt.each_with_index{|v, i| sum += i * v}
puts sum

sports = ["サッカー", "野球", "バスケ"]
sports.each_with_index do |name, i|
  p [name, i]
end