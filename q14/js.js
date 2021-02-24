//解法
N = 45678;
const coins = [10000, 5000, 2000, 1000, 500, 100, 50, 10, 5, 1];

var used = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
var remain = N;

Array.prototype.sum = function(){
    var result = 0;
    this.forEach(function(i){result += i;});
    return result;
}

for (var i = 9; i >= 0; i--){
    if (remain >coins[i]){
        used[i] = 1;
        remain -= coins[i];
    }
}

for (var i = 0; i < 10; i++){
    used[i] += Math.floor(remain / coins[i]);
    remain %= coins[i];
}

for (var i = 0; i < 9; i++){
    if((used[i] == 0) && (coins[i + 1] * used[i + 1] >= coins[i])){
        used[i] = 1;
        used[i + 1] -= Math.floor(coins[i] / coins[i + 1]);
    }
}
console.log(used.sum());

//別の解法

Array.prototype.combination = function(n){
    var result = [];
    for (var i = 0; i <= this.length - n; i++){
        if(n > 1){
            var combi = this.slice(i + 1).combination(n - 1);
            for (var j = 0; j < combi.length; j++){
                result.push([this[i]].concat(combi[j]));
            }
        }else{
            result.push([this[i]]);
        }
    }
    return result;
}

Array.prototype.sum = function(){
    var result = 0;
    this.forEach(function(i){result += i;});
    return result;
}

N = 45678;
const coins = [10000, 5000, 2000, 1000, 500, 100, 50, 10, 5, 1];
var result = N;
for (var i = 10; i >= 1; i--){
    var coin = coins.combination(i);
    for (var j = 0; j < coin.length; j++){
        var remain = N - coin[j].sum();
        if(remain < 0)
            continue;
        var cnt = coin[j].length;
        for (var c = 0; c < coin[j].length; c++){
            var r = Math.floor(remain / coin[j][c]);
            cnt += r;
            remain -= coin[j][c] * r;
        }
        result = Math.min(result, cnt);
    }
    if(result < N)
    break;
}

console.log(result);