const N = 289;

const town = [5381733, 1308265, 1279594, 2333899, 1023119, 1123891, 1914039, 2916976, 1974255, 
    1973115, 7266534, 6222666, 13515271, 9126214, 2304264, 1066328, 1154008, 786740,
    834930, 2098804, 2031903, 3700305, 7483128, 1815865, 1412916, 2610353, 8839469,
    5534800, 1364316, 963579, 573441, 694352, 1921525, 2843990, 1404729, 755733,
    976263, 1385262, 728276, 5101556, 832832, 1377187, 1786170, 1166338, 1104069,
    1648177, 1433566];

var left = 1
var right = town.reduce((a,b)=>a>b?a:b)

while(left < right){
    var middle = Math.floor((left + right) / 2);
    var seat_sum = 0;
    for(var i = 0; i < town.length; i++){
        seat_sum += Math.ceil(town[i] / middle)
    };
    if(seat_sum == N){
    for(var i = 0; i < town.length; i++)
        console.log(Math.ceil(town[i] / middle));
        break
    }else if(N > seat_sum){
        right = middle
    }else{
        left = middle + 1
    };
}

