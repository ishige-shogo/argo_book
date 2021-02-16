const W = 1000;
const N = 20;

function cut(w, h, n){
    if (w == h){
        return (n==0)
    };
    if (w > h){
        var alter = w;
        w = h;
        h = alter;
    };
    var r = h % w;
    var q = Math.floor(h / w);
    
    if ((n-q < 0) || (r == 0)){
        return (n - q == 0);
    }else{
        return cut(w, r, n - q);
    };
};

var cnt = 0;

for(var i = 1; i <= W; i++){
    for(var j = i; j <= W; j++){
        if (cut(i, j, N)){
            cnt++;
        };
    };
};

console.log(cnt)