const N = 15;

function nPr(n, r){
    var result = 1;
    for(var i = n; i >= (n-r+1); i--){
        result *= i;
    };
    return result;
};

console.log(nPr(5, 3))

var way = 0;

for(var s = 0; s >= (N-1); s++){
    way += (N - s) * nPr(N, s - 1) * s;
};

console.log(way)