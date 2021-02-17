const N = 11;
var q = 1;

const pi = 314159265358;

var pow = 10 ** N;

while(true){
    if(Math.floor(q * pi / pow) != Math.floor(q * (pi + 1) / pow)){
        if(q * (pi + 1) % pow > 0){
            console.log(q);
            break;
        };
    };
    q++;
}