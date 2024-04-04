const { count } = require('console');
const con = require('../connection/connecton2');
const con1 = require('../connection/connection');

// logic for home of attendance report

const index = (req,res)=>{
    try{
        var  i = 1;
        var first=i;
        var last = i*10;
        var start = '2023-12-01';
        var end = '2023-12-31';
        var total = 31;
        
        var sql = `select studentMaster.id,concat(f_name,' ',l_name) as 'full_name',count(attendence.attendence) as 'present',concat(CEILING((count(attendence.attendence)/${total})*100),'%') as 'percentage' from studentMaster join attendence on studentMaster.id = attendence.id and attendence.attendence = 'P' and attendence.Date between '${start}' and '${end}' group by attendence.id order by studentMaster.id limit 10`;
        con.query(sql,function(e,result){
            if(e) throw e;
            res.render("attend/attendReport",{result,i,first,last,start,end,total})
        });
        
    }
    catch(e){
        console.log("Something went Wrong..."+e);
    }
}
// logic for first page

const first = (req,res) =>{
    try{
        var  i = 1;
        var first=i;
        var last = i*10;
        var start = req.params.start;
        var end = req.params.end;
        var total = req.params.total;
        
        var sql = `select studentMaster.id,concat(f_name,' ',l_name) as 'full_name',count(attendence.attendence) as 'present',concat(CEILING((count(attendence.attendence)/${total})*100),'%') as 'percentage' from studentMaster join attendence on studentMaster.id = attendence.id and attendence.attendence = 'P' and attendence.Date between '${start}' and '${end}' group by attendence.id order by studentMaster.id limit 10`;
        con.query(sql,function(e,result){
            if(e) throw e;
            res.render("attend/attendReport",{result,i,first,last,start,end,total})
        });
        
    }
    catch(e){
        console.log("Something went Wrong..."+e);
    }
}
const no = async (req,res)=>{
    try{

        let select = `select count(*) as 'no' from studentMaster`;
        let cout = await con1.query(select);
        let index = cout[0][0].no;
        var i = req.params.page;
        if(i*10 > index){
            
        }
        var start = req.params.start;
        var end = req.params.end;
        var total = req.params.total;
        var first=(i*10) - 9;
        var last = (i*10);
        var value = [i*10]; 
        var sql = `select studentMaster.id,concat(f_name,' ',l_name) as 'full_name',count(attendence.attendence) as 'present',concat(ceiling((count(attendence.attendence)/${total})*100),'%') as 'percentage' from studentMaster join attendence on studentMaster.id = attendence.id and attendence.attendence = 'P' and attendence.Date between '${start}' and '${end}' group by attendence.id order by studentMaster.id limit 10 offset ?`;
        con.query(sql,value,function(e,result){
            if(e) throw e;
            res.render("attend/attendReport",{result,i,first,last,start,end,total})
        });
        
    }
    catch(e){
        console.log("Something went Wrong..."+e);
    }

}

// for particular page 

const page = (req,res)=>{
    try{
        var  i = 1;
        var first=i;
        var last = i*10;
        var start = req.params.start;
        var end = req.params.end;
        var total = req.params.total;
        var sql = `select studentMaster.id,concat(f_name,' ',l_name) as 'full_name',count(attendence.attendence) as 'present',concat(ceiling((count(attendence.attendence)/${total})*100),'%') as 'percentage' from studentMaster join attendence on studentMaster.id = attendence.id and attendence.attendence = 'P' and attendence.Date between '${start}' and '${end}' group by attendence.id order by studentMaster.id limit 10`;
        con.query(sql,function(e,result){
            if(e) throw e;
            res.render("attend/attendReport",{result,i,first,last,start,end,total})
        });
        
    }
    catch(e){
        console.log("Something went Wrong..."+e);
    }
}

// for previous

const prev = (req,res) =>{
    try{

        var i = req.params.Id;
        var start = req.params.start;
        var end = req.params.end;
        var total = req.params.total;
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
            first= last-10+1;
        }
        var sql = `select studentMaster.id,concat(f_name,' ',l_name) as 'full_name',count(attendence.attendence) as 'present',concat(ceiling((count(attendence.attendence)/${total})*100),'%') as 'percentage' from studentMaster join attendence on studentMaster.id = attendence.id and attendence.attendence = 'P' and attendence.Date between '${start}' and '${end}' group by attendence.id order by studentMaster.id limit 10  offset ? `;
        con.query(sql,value,function(e,result){
            if(e) throw e;
            res.render("attend/attendReport",{result,i,first,last,start,end,total})
        });
        
    }
    catch(e){
        console.log("Something went Wrong..."+e);
    }
}

const next = (req,res)=>{
    try{
        var i = req.params.Id;
        var start = req.params.start;
        var end = req.params.end;
        var total = req.params.total;
        var first=(i*10)+1;
        var last = first+9;
        var value = [i*10]; 
        var sql = `select studentMaster.id,concat(f_name,' ',l_name) as 'full_name',count(attendence.attendence) as 'present',concat(ceiling((count(attendence.attendence)/${total})*100),'%') as 'percentage' from studentMaster join attendence on studentMaster.id = attendence.id and attendence.attendence = 'P' and attendence.Date between '${start}' and '${end}' group by attendence.id order by studentMaster.id limit 10 offset ?`;
        i++;
        con.query(sql,value,function(e,result){
            if(e) throw e;
            res.render("attend/attendReport",{result,i,first,last,start,end,total})
        });
        
    }
    catch(e){
        console.log("Something went Wrong..."+e);
    }
}
const last = (req,res)=>{
    try{
        var start = req.params.start;
        var end = req.params.end;
        var total = req.params.total;
        var sql1 = "select count(*) as cont from studentMaster";
        con.query(sql1,function(e,result){
            if(e) throw e;
            var count = result[0].cont;
            var first= count-10+1;
            var last = count;
            var i = count/10;
            var sql = `select studentMaster.id,concat(f_name,' ',l_name) as 'full_name',count(attendence.attendence) as 'present',concat(ceiling((count(attendence.attendence)/${total})*100),'%') as 'percentage' from studentMaster join attendence on studentMaster.id = attendence.id and attendence.attendence = 'P' and attendence.Date between '${start}' and '${end}' group by attendence.id order by studentMaster.id limit 10 offset ?`;
            con.query(sql,[first],function(e,result){
             if(e) throw e;
             res.render("attend/attendReport",{result,i,first,last,start,end,total})
           });
        })
    }
    catch(e){
        console.log("Something went Wrong..."+e);
    }
}

module.exports = {index,first,page,prev,next,last,no};