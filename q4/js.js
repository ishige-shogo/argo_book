function check(number){
    const light = [6, 2, 5, 5, 4, 5, 6, 3, 7, 6];
    return light[Math.floor(number / 10)] + light[Math.floor(number % 10)];
}

var lights = new Array(60);
for(var i = 0; i < 60; i++){
    lights[i] = check(i);
}

var N = 30;
var way = 0;

for(var h=0; h<24; h++){
    for(var m=0; m<60; m++){
        for(var s=0; s<60; s++){
            if(lights[h] + lights[m] + lights[s]==N)
                way ++;
        }
    }
}

console.log(way)