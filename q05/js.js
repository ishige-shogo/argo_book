N = 45

function count(number){
    const money = [10000, 5000, 2000, 1000, 500, 100, 50, 10, 5, 1];
    var coins = 0;
    for(var m = 0; m < money.length; m++){
        coin = Math.floor(number / money[m]);
        number = number % money[m];
        coins += coin;
    }
    return coins;
}

pascal = new Array(N + 1);
pascal[0] = 1;
for (var i = 1; i < N + 1; i++){
    pascal[i]=0;
};
for(var n = 0; n < N; n++){
    for(var i = n + 1; i > 0; i--){
        pascal[i] += pascal[i - 1];
    }
};

var total = 0;
for(var i = 0; i < N + 1; i++){
    total += count(pascal[i]);
}

console.log(total);
