
people = 100

way = 0

m = 0
while m <= people:
    rock = m
    n = 0
    while n <= people - rock:
        paper = n
        scissor = people - rock - paper
        all = [rock, paper, scissor]
        if all.count(max(all)) == 1:
            way += 1
        n += 1
    m += 1


print(way)

