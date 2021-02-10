def check(number)
    #０～９をアナログにした時の点灯本数
    light = [6, 2, 5, 5, 4, 5, 6, 3, 7, 6]
    light[number/10] + light[number%10]
end

N = 30
way = 0

24.times do |h|
    60.times do |m|
        60.times do |s|
            way += 1 if check(h) + check(m) + check(s) == N
        end
    end
end

puts way


#別解

def check(number)
    #０～９をアナログにした時の点灯本数
    light = [6, 2, 5, 5, 4, 5, 6, 3, 7, 6]
    light[number/10] + light[number%10]
end

#あらかじめ0~59の点灯本数データを配列として持っておく
lights = Array.new(60)
60.times do |i|
    lights[i] = check(i)
end

N = 30
way = 0

24.times do |h|
    60.times do |m|
        60.times do |s|
            way += 1 if lights[h] + lights[m] + lights[s] == N
        end
    end
end

puts way

3.times do |n|
    puts n
end