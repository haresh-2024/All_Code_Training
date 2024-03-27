const express = require("express");
const router = express.Router();
const con = require('../connection');

router.get('/',async (req,res)=>{
    
    try{
        res.render('timezone')
    }
    catch(e){
        console.log(e);
    }
})
router.get('/city',async (req,res)=>{
    
    try{
         var sql = `select * from timezone`;
         var result = await con.query(sql);
         result = result[0];
         res.json(result);
    }
    catch(e){
        console.log(e);
    }
})

module.exports = router;