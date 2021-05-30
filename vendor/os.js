const os=require('os');

var total=os.totalmem();
var free=os.freemem();

console.log("Total Memeory Is:"+total);
console.log("Free Memeory Is:"+free);
