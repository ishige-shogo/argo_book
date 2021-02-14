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
