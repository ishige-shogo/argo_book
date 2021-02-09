
people = 100

way = 0

0.upto(people) do |rock|
    0.upto(people-rock) do |paper|
        scissor = people - rock - paper
        all = [rock, paper, scissor]
        way += 1 if all.count(all.max) == 1
    end
end

puts way

