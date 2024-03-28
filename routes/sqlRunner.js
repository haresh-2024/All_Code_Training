const express = require("express");
const router = express.Router();
const con = require('../connection');
const ver = require('../middleware/verify');

router.get('/',ver,async (req,res)=>{
    try{
        var sql2 = "show Tables";
        var result2 = await con.query(sql2);
        var table = result2[0];
        res.render('sqlRunner/table',{table});
      }
      catch(e){
          res.render('sqlRunner/error',{e});
      }
})
router.all('/main',ver,async (req,res)=>{
  try{
      if(req.body.opt == 'select'){
          
              var i = 1;
              var first=i;
              var last = i*10;
              var sql = req.body.query;
              sql = sql.split(';')[0];
              var sq  = sql + ' limit 10';
              var  len = await con.query(sql);
              var tot = len[0].length;
              if(tot < 10){
                  last = tot;
              }
              var result = await con.query(sq);
              result = result[0];
              var len = result.length;
              var keys = Object.keys(result[0]);
              var sql1 = "show tables";
              var result1 = await con.query(sql1);
              var table = result1[0];
              sql = btoa(sql);
              res.render('sqlRunner/index',{result,keys,len,table,i,sql,first,last,tot});

      }
      else{
              var sql = req.body.query;
              sql = sql.split(';')[0];
              var result = await con.query(sql);
              if(result){
                  res.render('sqlRunner/other')
              }
              else{
                  console.log("something went wrong...");
              }
      }
  }
  catch(e){
      console.log(e);
      res.render('sqlRunner/error',{e});
  }
})



router.get('/ofirst/:sql',ver,async(req,res)=>{
    
    try{
        var i = 1;
        var sql = req.params.sql;
        sql = atob(sql);
        var sq  = sql + ' limit 10';
        var  len = await con.query(sql);
        var tot = len[0].length;
        var last = i*10;
        if(tot < 10){
            last = tot;
        }
        var first = i;
        var result = await con.query(sq);
        result = result[0];
        var len = result.length;
        var keys = Object.keys(result[0]);
        var sql1 = "show tables";
        var result1 = await con.query(sql1);
        var table = result1[0];
        sql = btoa(sql);
        res.render('sqlRunner/index',{result,keys,len,table,i,sql,first,last,tot});
    }
    catch(e){
        console.log("you have error in sql syntax"+e);
        var err = "hii"; 
        res.render('sqlRunner/error',{err});
    }
})

router.get('/oprev/:Id/:sql',ver,async(req,res)=>{
    
    try{
        var i = req.params.Id;
        var last; 
        var last; 
        var first;
        if( i == 1){
            first = 1;
            last= 10;
        }
        else{
            i--;
            last= i*10;
            first= last-10+1;
        }
        var sql = req.params.sql;
        sql = atob(sql);
        var  len = await con.query(sql);
        var tot = len[0].length;
        var off = i*10 - 10;
        var sq = sql + ` limit 10 offset ${off}`;
        var result = await con.query(sq);
        result = result[0];
        var len = result.length;
        var keys = Object.keys(result[0]);
        var sql1 = "show tables";
        var result1 = await con.query(sql1);
        var table = result1[0];
        sql = btoa(sql);
        res.render('sqlRunner/index',{result,keys,len,table,i,sql,first,last,tot});
    }
    catch(e){
        console.log("you have error in sql syntax"+e);
        res.render('sqlRunner/error',{e});
    }
})

router.get('/onext/:Id/:sql',ver,async(req,res)=>{
    
    try{
        var i = req.params.Id;
        var sql = req.params.sql;
        sql = atob(sql);
        var  len = await con.query(sql);
        var tot = len[0].length;
        var off = i*10;
        i++;
        var first = off+1;
        var last = off+10
        var sq = sql + ` limit 10 offset ${off}`;
        var result = await con.query(sq);
        result = result[0];
        var len = result.length;
        var keys = Object.keys(result[0]);
        var sql1 = "show tables";
        var result1 = await con.query(sql1);
        var table = result1[0];
        sql = btoa(sql);
        res.render('sqlRunner/index',{result,keys,len,table,i,sql,first,last,tot});
    }
    catch(e){
        console.log("you have error in sql syntax"+e);
        res.render('sqlRunner/error',{e});
    }
})

router.get('/olast/:sql',ver,async(req,res)=>{
    
    try{
        var sql = req.params.sql;
        sql = atob(sql);
        var  len = await con.query(sql);
        var tot = len[0].length;
        var i = tot / 10;
        off = tot - 10;
        var first = tot-10;
        var last = tot;
        var sq = sql + ` limit 10 offset ${off}`;
        var result = await con.query(sq);
        result = result[0];
        var len = result.length;
        var keys = Object.keys(result[0]);
        var sql1 = "show tables";
        var result1 = await con.query(sql1);
        var table = result1[0];
        sql = btoa(sql);
        res.render('sqlRunner/index',{result,keys,len,table,i,sql,first,last,tot});
    }
    catch(e){
        console.log("you have error in sql syntax"+e);
        res.render('sqlRunner/error',{e});
    }
})

router.get('/onext/:Id/:sql',ver,async(req,res)=>{
    
    try{
        var i = req.params.Id;
        var sql = req.params.sql;
        sql  = atob(sql);
        var off = i*10;
        i++;
        var sq = sql + ` limit 10 offset ${off}`;
        var result = await con.query(sq);
        result = result[0];
        var len = result.length;
        var keys = Object.keys(result[0]);
        var sql1 = "show tables";
        var result1 = await con.query(sql1);
        var table = result1[0];
        sql = btoa(sql);
        res.render('sqlRunner/index',{result,keys,len,table,i,sql});
    }
    catch(e){
        res.render("sqlRunner/error",{e});
    }
})

module.exports = router;