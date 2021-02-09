const stations = 29;
const enter = 1;
const exit = 17;

betweenStation = Math.abs(enter - exit);

console.log((1 << (betweenStation - 1)) + (1 << (stations - betweenStation - 1)) - 1);

