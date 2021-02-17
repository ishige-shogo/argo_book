N = 7;

var vote = n => {
    if(n <= 2) return 1;
    var way = 1;
    way += vote(n - 1);
    var i = 2;
    while(i <= (n - 1)){
        way += vote(i) * vote(n - 1);
        i += 1;
    };
    return way
};

console.log(vote(N))