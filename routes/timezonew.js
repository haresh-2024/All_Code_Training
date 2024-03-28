const express = require("express");
const router = express.Router();
const con = require('../connection');
const ver = require('../middleware/verify');

router.get('/',ver,async (req,res)=>{
    
    try{
        res.render('timezonew')
    }
    catch(e){
        console.log(e);
    }
})
router.get('/city',ver,async (req,res)=>{
    
    try{
         var sql = `select distinct(city) as 'city' from timezone`;
         var result = await con.query(sql);
         var sql1 = `select * from timezone`;
         var result1 = await con.query(sql1);
         res.send({
            result1 : result[0],
            result2 : result1[0]
         })
    }
    catch(e){
        console.log(e);
    }
})
module.exports = router;