const express = require("express");
const router = express.Router();
const con = require('../connection');

router.get('/',async (req,res)=>{
      try{
          var sql1 = `select * from select_master`;
          var result1 = await con.query(sql1);
          var sql2 = `select * from opti`;
          var result2 = await con.query(sql2);
          result1 = result1[0];
          result2 = result2[0];
          res.render('component/index',{result1,result2});
        }
        catch(e){
            res.render('component/error',{e});
        }
});
router.get('/generate/:field/:control',async (req,res) =>{
    try{
        var field = req.params.field;
        var control = req.params.control;
        if(control == 'combobox' || control == 'checkbox' || control == 'radio' || control == 'text'){

            var sql = `select opti.oname from opti join select_master on opti.sid=select_master.sid and select_master.sname = '${field}'`;
            var result = await con.query(sql);
            result = result[0];
            res.render('component/component',{result,field,control});
      
        }
        else{
            var e = 'please check your input...';
            res.render('component/error',{e});
        }
    }
    catch(e){
        res.render('component/error',{e});
    }
})
router.get('/generate/:field/:control/:select',async (req,res) =>{
    try{
        var field = req.params.field;
        var control = req.params.control; 
        var select = req.params.select;
        if(control == 'combobox' || control == 'checkbox' || control == 'radio' || control == 'text'){

            var sql = `select opti.oname from opti join select_master on opti.sid=select_master.sid and select_master.sname = '${field}'`;
            var result = await con.query(sql);
            result = result[0];
            res.render('component/cs',{result,field,control,select});
      
        }
        else{
            var e = 'please check your input...';
            res.render('component/error',{e});
        }
    }
    catch(e){
        res.render('component/error',{e});
    }
})

module.exports = router;