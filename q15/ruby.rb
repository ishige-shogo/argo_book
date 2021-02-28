M, N = 3000, 2500

pre, now, n = 0, 1, N

while n > 1 do
    if(pre * 2 == now) || (pre * 2 + 1 == now)
        if now * 2 <= M
            pre, now, n = now, now * 2, n - 1
        else
            pre, now = now, now/2
        end
    else
        if pre % 2 == 0
            if now *2+1 <= M
                pre, now, n = now, now*2+1, n-1
            else
                pre, now = now, now/2
            end
        else
            pre, now = now, now/2
        end
    end
end

puts now