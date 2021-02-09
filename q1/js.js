const people = 100;
var way = 0;

for(var rock = 0; rock <= people; rock++){
    for(var paper = 0; paper <= people - rock; paper++){
        var scissor = people - rock - paper;
        if (rock > paper){
            if(rock != scissor)
            way++;
        }else if(rock < paper){
            if(paper != scissor)
            way++;
        }else{
            if(rock < scissor)
            way++;
        }
    }
}

console.log(way);