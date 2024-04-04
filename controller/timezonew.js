const con = require('../connection/connection');

const index = async (req,res)=>{
    
    try{
        res.render('timeZone/timezonew')
    }
    catch(e){
        console.log(e);
    }
}
const city = async (req,res)=>{
    
    try{
         var sql = `select distinct(city) as 'city' from timezone`;
         var result = await con.query(sql);
         var sql1 = `select * from timezone`;
         var result1 = await con.query(sql1);
         console.log(result1[0]);
         res.send({
            result1 : result[0],
            result2 : result1[0]
         })
    }
    catch(e){
        console.log(e);
    }
}
module.exports = {index,city};