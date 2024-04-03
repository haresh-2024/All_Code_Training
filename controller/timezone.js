const con = require('../connection/connection');

const index = async (req,res)=>{
    
    try{
        res.render('timeZone/timezone')
    }
    catch(e){
        console.log(e);
    }
}
const city = async (req,res)=>{
    
    try{
         var sql = `select * from timezone`;
         var result = await con.query(sql);
         result = result[0];
         res.json(result);
    }
    catch(e){
        console.log(e);
    }
}

module.exports = {index,city};