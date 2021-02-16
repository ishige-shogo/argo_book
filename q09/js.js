N = 8;

var keta = 1;
while (true){
    if (keta * Math.pow(N - 1, keta) < Math.pow(N, keta-1))
        break;
    keta++;
}

var cnt = 0;
for(i = N; i <= Math.pow(N, keta); i++){
    var value = i.toString(N);
    var len = value.length;
    var sum = 0;
    for(d = 0; d < len; d++){
        sum += Math.pow(parseInt(value[d], N), len);
    }
    if (i == sum){
        console.log(value);
        cnt++;
        if(cnt == N) break;
    }
}
