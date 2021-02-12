stations = 29

enter = 1
exit = 17

# 絶対値を取得
station = abs(enter - exit)

# 内回りの方法 + 外回りの方法 - 被った1つ
print((1 << (station - 1)) + (1 << (stations - station - 1)) - 1)