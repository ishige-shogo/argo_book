#アダムズ方式議席問題

# import sys

# sys.setrecursionlimit(10000000)
#numberを切り上げ
#math.ceil(number)

#例(250, 200, 150)人の町の場合
# town = [250, 200, 150]
# N = 10
# num = 1

# def adams_caluculater(num):
#     adams = []
#     for t in town:
#         adams.append(math.ceil(t/num))
#     if sum(adams) == N:
#         return adams
#     else:
#         num += 1
#         return adams_caluculater(num)

# print(adams_caluculater(1))

#----------------------------------------------
#本番問題
#処理が大きすぎて実行できなかった

# def adams_caluculater(num):
#     adams = []
#     for t in town:
#         adams.append(math.ceil(t/num))
#     if sum(adams) == N:
#         return adams
#     else:
#         num += 1
#         return adams_caluculater(num)

# print(adams_caluculater(573441))

town = [5381733, 1308265, 1279594, 2333899, 1023119, 1123891, 1914039, 2916976, 1974255, 
        1973115, 7266534, 6222666, 13515271, 9126214, 2304264, 1066328, 1154008, 786740,
        834930, 2098804, 2031903, 3700305, 7483128, 1815865, 1412916, 2610353, 8839469,
        5534800, 1364316, 963579, 573441, 694352, 1921525, 2843990, 1404729, 755733,
        976263, 1385262, 728276, 5101556, 832832, 1377187, 1786170, 1166338, 1104069,
        1648177, 1433566]
N = 289


#割る数を1,2,3...と増やしていく方法(上記のadams_caluculaterメソッド)だと試行回数が多すぎて処理できなくなる(時間がかかる)
#(前者の方法の実行回数の上限 < 2**(n)) => nの最小値が最大の試行回数になる 二分探索を使用


left, right = 1, max(town)

while left < right:
    middle = (left + right) / 2
    seat = []
    for i in town:
        seat.append(math.ceil(i/middle))
    seat_sum = sum(seat)
    if seat_sum == N:
        print(seat)
        break
    elif N > seat_sum:
        right = middle
    else:
        left = middle + 1


#------------------------------------------------------------
#0から試行
first, last = 0, 30000000
answer = 20210215

number = 0
count = 0
while number <= last:
    if answer == number:
        count += 1
        print(count)
        break
    number += 1
    count += 1

#-------------------------------------------------
#二分探索で試行
import math
first, last = 0, 30000000
answer = 20210215

count = 0
while first < last:
    average = math.ceil((first + last) / 2)
    if answer == average:
        count += 1
        print(count)
        break
    elif answer > average:
        first = average
        count += 1
    else:
        last = average
        count += 1

#------------------------------------------------


print((0+5)/2)

    middle = (left + right) / 2
    seat = []
    for i in town:
        seat.append(math.ceil(i/middle))
    seat_sum = sum(seat)
    if seat_sum == N:
        print(seat)
        break
    elif N > seat_sum:
        right = middle
    else:
        left = middle + 1
