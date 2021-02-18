
#型となる部分
#ごり押しバージョン（解法とは離れているが、一番単純)

#M(カードの枚数)、N(カードを動かす回数)
M = 9
N = 5

# １～Mまでの数値の配列を作成
n = [*1..M]

# n内の数値を並び変えたすべてのパターンを記録
all_number = n.permutation.to_a


answer = 0

# 全てのパターンを1つずつ検査
all_number.each do |number|
    count = 0
    #指定した回数分処理を繰り返す
    while count < N do
        #左端が1になったら強制終了
        break if number[0] == 1
        #左端の数字分、順列を反転させる
        ary_number = number.first(number[0]).reverse
        ary_number.each_with_index do |num, i|
            number[i] = num
        end
        count += 1
    end
    #左端が1 且つ 指定した回数分繰り返された配列パターンのみをカウント
    if (number[0] == 1) && (count == N)
        answer += 1
    end
end

puts answer





#-------------------------------------------------------
#ここから問題

M, N = 4, 5

# 2~Mまでの数値の全パターンの配列を作る
number = [*2..M].permutation.to_a.unshift(1)
number.each do |n|
    n.unshift(1)
end


