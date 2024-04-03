
const con = require('../connection/connecton2');
const fs = require('fs');
const { json } = require('body-parser');
// home page

const index = (req,res)=>{
    try{
        res.render("formwithFile/index");
    }
    catch(err){
        console.log(err);
    }
}

// for saving data into file...

const save = (req,res)=>{
    if(fs.existsSync('/home/haresh-chauhan/All_Code_Training/routes/details.json')){
        try{
            fs.readFile('/home/haresh-chauhan/All_Code_Training/routes/details.json','utf-8',function(err,data){
                    
                    if(err) throw err;
                    var js = JSON.parse(data);
                    js.push(req.body);
                    var actualdata = JSON.stringify(js,null,2);
                    fs.writeFile('/home/haresh-chauhan/All_Code_Training/routes/details.json',actualdata,function(err){
                            if(err) throw err;
                                console.log("data added...");
                                res.write('data added...\n');
                                res.end();
                            });
                            
            });
        }  
        catch(err){
            console.log(err);
        }
        
    }
    else{
        try{
            fs.routerendFile('/home/haresh-chauhan/All_Code_Training/routes/details.json',`[${JSON.stringify(req.body,null,2)}]`,function(err){
                    if(err) throw err;
                    console.log("data added...");
                    res.write('data added...');
                    res.write("</br>");
                    res.end();
                   });
        }
        catch(err){
            console.log(err);
        }
    }
    res.render("formwithFile/index"); 
}

// for getting full details.

const full = (req,res)=>{
    try{
        fs.readFile('/home/haresh-chauhan/All_Code_Training/routes/details.json','utf-8',function(err,data){  
            if(err) throw err;
            var e = JSON.parse(data);
            var url = req.url;
            var i = url.slice(13);
            res.render("formwithFile/fullDetails",{i,e});
        });
    }
    catch(err){
        console.log(err);
    }
}

// for 4 data show...
const four = (req,res) =>{
    try{
        fs.readFile('/home/haresh-chauhan/All_Code_Training/routes/details.json','utf-8',function(err,data){  
            var e = JSON.parse(data);
            if(err) throw err;
            const i = e.length;
            res.render("formwithFile/lessDetails",{i,e});
        });
    }
    catch(err){
        console.log(err);
    }
}

// for delete the data.
const delt = (req,res)=>{
    try{
        fs.readFile('/home/haresh-chauhan/All_Code_Training/routes/details.json','utf-8',function(err,data){  
            if(err) throw err;
            var url = req.url;
            url = url.slice(15);
            var js = JSON.parse(data);
            js.splice(url,1);
            var actualdata = JSON.stringify(js,null,2);
            fs.writeFile('/home/haresh-chauhan/All_Code_Training/routes/details.json',actualdata,function(e){
                if(e) throw e;
            })
            res.render("formwithFile/deleteDetails");

        });
    }
    catch(err){
        console.log(err);
    }
}

// this for get value from file.
const read = (req,res)=>{
    try{
        fs.readFile('/home/haresh-chauhan/All_Code_Training/routes/details.json','utf-8',function(err,data){  
            if(err) throw err;
            var url = req.url;
            var i = url.slice(8);
            var e = JSON.parse(data);
            res.render("formwithFile/update",{i,e});
        });
    }
    catch(err){
        console.log(err);
    }
}

// this will update the value.
const update = (req,res)=>{
    try{
        fs.readFile('/home/haresh-chauhan/All_Code_Training/routes/details.json','utf-8',function(err,data){  
            if(err) throw err;
            var url = req.url;
            var i = url.slice(13);
            var e = JSON.parse(data);
            e[i] = req.body;
            var actualdata = JSON.stringify(e,null,2);
            fs.writeFile('/home/haresh-chauhan/All_Code_Training/routes/details.json',actualdata,function(e){
                if(e) throw e;
            })
            res.render("formwithFile/fullDetails",{i,e});
        });

    }
    catch(e){
        console.log(err);
    }
}

module.exports = {index,save,full,four,delt,read,update};