const fs=require('fs');

fs.readdir('./',function(err,files){
    if(err)
    console.log("Hey Error",err);
    else
    console.log("Results",files);
})