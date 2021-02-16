
n = 17
way_a = 2**(n-2)

m = 14
way_b = 2**(m-2)

way = way_a + way_b - 1

puts way

#　別解

stations = 29

enter, exi = 1, 17

station = (enter - exi).abs

puts (1 << (station - 1)) + (1 << (stations - station - 1)) - 1


