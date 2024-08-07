const con = require('../connection/connecton2');


const index = (req,res)=>{
    try{
        var  i = 1;
        var first=i;
        var last = i*10;
        var sql = "select * from StudentMaster26 Limit 10";
        con.query(sql,function(e,result){
            if(e) throw e;
            res.render("pagination/pagination",{result,i,first,last})
        });
        
    }
    catch(e){
        console.log("Something went Wrong..."+e);
    }
}
const last = (req,res)=>{
    try{
        
        var sql1 = "select count(*) as cont from StudentMaster26";
        con.query(sql1,function(e,result){
            if(e) throw e;
            var count = result[0].cont;
            var first= count-10;
            var last = count;
            var i = count/10;
            var sql = `select * from StudentMaster26 Limit 10 offset ?`;
            con.query(sql,[first],function(e,result){
              if(e) throw e;
              res.render("pagination/pagination",{result,i,first,last})
             });
        })
        
    }
    catch(e){
        console.log("Something went Wrong..."+e);
    }
}

const next = (req,res)=>{
    try{
        var i = req.params.Id;
        var first=i*10;
        var last = first+10;
        var value = [i*10]; 
        var sql = "select * from StudentMaster26 Limit 10 offset ?";
        i++;
        con.query(sql,value,function(e,result){
            if(e) throw e;
            res.render("pagination/pagination",{result,i,first,last})
        });
        
    }
    catch(e){
        console.log("Something went Wrong..."+e);
    }
}

const prev = (req,res)=>{
    try{
        var i = req.params.Id;
        j = i-2;
        var value = [j*10];
        i--; 
        var last; 
        var first;
        if( i == 1){
           first = 1;
           last= 10;
        }
        else{
            last= i*10;
            first= last-10;
        }
        var sql = "select * from StudentMaster26 limit 10  offset ? ";
        con.query(sql,value,function(e,result){
            if(e) throw e;
            res.render("pagination/pagination",{result,i,first,last})
        });
        
    }
    catch(e){
        console.log("Something went Wrong..."+e);
    }
}


// order by

const order = (req,res)=>{
    try{
        var  i = 1;
        var first=i;
        var last = i*10;
        var cols = req.params.cols;
        var order = req.params.order;
        var sql = `select * from StudentMaster26 order by ${cols} ${order} Limit 10`;
        con.query(sql,function(e,result){
            if(e) throw e;
            res.render("pagination/order",{result,i,first,last,cols,order})
        });
        
    }
    catch(e){
        console.log("Something went Wrong..."+e);
    }
}

const oprev = (req,res)=>{
    try{

        var i = req.params.Id;
        var cols = req.params.cols;
        var order = req.params.order;
        j = i-2;
        var value = [j*10];
        i--; 
        var last; 
        var first;
        if( i == 1){
           first = 1;
           last= 10;
        }
        else{
            last= i*10;
            first= last-10;
        }
        var sql = `select * from StudentMaster26 order by ${cols} ${order} limit 10  offset ? `;
        con.query(sql,value,function(e,result){
            if(e) throw e;
            res.render("pagination/order",{result,i,first,last,cols,order})
        });
        
    }
    catch(e){
        console.log("Something went Wrong..."+e);
    }
}

const onext = (req,res)=>{
    try{
        var i = req.params.Id;
        var cols = req.params.cols;
        var order = req.params.order;
        var first=i*10;
        var last = first+10;
        var value = [i*10]; 
        var sql = `select * from StudentMaster26 order by ${cols} ${order} Limit 10 offset ?`;
        i++;
        con.query(sql,value,function(e,result){
            if(e) throw e;
            res.render("pagination/order",{result,i,first,last,cols,order})
        });
        
    }
    catch(e){
        console.log("Something went Wrong..."+e);
    }
}

const olast = (req,res)=>{
    try{
        var cols = req.params.cols;
        var order = req.params.order
        var sql1 = "select count(*) as cont from StudentMaster26";
        con.query(sql1,function(e,result){
            if(e) throw e;
            var count = result[0].cont;
            var first= count-10;
            var last = count;
            var i = count/10;
            var sql = `select * from StudentMaster26 order by ${cols} ${order} Limit 10 offset ?`;
            con.query(sql,[first],function(e,result){
             if(e) throw e;
             res.render("pagination/order",{result,i,first,last,cols,order})
           });
        })
    }
    catch(e){
        console.log("Something went Wrong..."+e);
    }
}

const row = (req,res)=>{
    try{
        var i = req.params.Id;
        var last = i*10;
        var first;
        if(i < 2){
            first = 1;
        }
        else{
            first = last - 10;
        }
        var value = [first]; 
        var sql = `select * from StudentMaster26  Limit 10 offset ?`;
        con.query(sql,value,function(e,result){
            if(e) throw e;
            res.render("pagination/pagination",{result,i,first,last})
        });
        
    }
    catch(e){
        console.log("Something went Wrong..."+e);
    }
}

const orow = (req,res)=>{
    try{
        var i = req.params.Id;
        var cols = req.params.cols;
        var order = req.params.order;
        var last = i*10;
        var first= last-10;
        var value = [i*10]; 
        var sql = `select * from StudentMaster26 order by ${cols} ${order} Limit 10 offset ?`;
        con.query(sql,value,function(e,result){
            if(e) throw e;
            res.render("pagination/order",{result,i,first,last,cols,order})
        });
        
    }
    catch(e){
        console.log("Something went Wrong..."+e);
    }
}

module.exports = {index,prev,last,next,order,oprev,olast,onext,row,orow};