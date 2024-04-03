const con = require('../connection/connection');
const state  = async (req,res)=>{
    
    try{
        res.render('cityState/state');
    }
    catch(e){
       console.log(e);
    }
}
const city = async (req,res)=>{
    
    try{
        var sql = `select * from state`;
        var result =  await con.query(sql);
        var sql1 = `select * from city`;
        var result1 = await con.query(sql1);
        res.send({
            state: result[0],
            city : result1[0]
        })
    }
    catch(e){
        console.log(e);
    }
}
module.exports = {state,city}