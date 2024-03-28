const express = require("express");
const router = express.Router();
const con = require('../connecton2');
const ver = require('../middleware/verify');

router.get('/',ver,(req,res)=>{
    try{
       
        var total = 91;
        
        var sql = `select studentMaster.id,f_name,l_name,count(attendence.attendence) as 'present',concat(CEILING((count(attendence.attendence)/${total})*100),'%') as 'percentage' from studentMaster join attendence on studentMaster.id = attendence.id and attendence.attendence = 'P' group by studentMaster.id`;
        var sq = sql + ` limit 10`;
        con.query(sq,function(e,result){
            if(e) throw e;
            res.render('fps/index',{result})
        });
        
    }
    catch(e){
        console.log("Something went Wrong..."+e);
    }
})


// filter  
router.post('/order',ver,(req,res)=>{

    try{
        
          var id = req.body.id;
          var sql = `select studentMaster.id,f_name,l_name,count(attendence.attendence) as 'present',concat(ceiling((count(attendence.attendence)/91)*100),'%') as 'percentage' from studentMaster join attendence on studentMaster.id = attendence.id and attendence.attendence = 'P' and studentMaster.id in (${id}) group by attendence.id order by studentMaster.id`;
          con.query(sql,(e,result)=>{
              res.render('fps/index',{result});
          })
    }
    catch(e){
        console.log(e);
    }
})
router.post('/filter',ver,(req,res)=>{
    try{
        if(req.body.fname == '' && req.body.lname == '' && req.body.percent == '' && req.body.status == ''){
            var sql = `select studentMaster.id,f_name,l_name,count(attendence.attendence) as 'present',concat(ceiling((count(attendence.attendence)/91)*100),'%') as 'percentage' from studentMaster join attendence on studentMaster.id = attendence.id and attendence.attendence = 'P' group by attendence.id order by studentMaster.id`;
            con.query(sql,(e,result)=>{
                if(e) throw e;
                res.render('fps/order',{result,percent,status,symbol1,symbol2,sql});
            });
        }
        else{
            var fname = req.body.fname;
            var lname = req.body.lname;
            var symbol1 = req.body.opt1;
            var symbol2 = req.body.opt2;
            var percent = req.body.percent;
            var status = req.body.status;
            console.log(status);
        
            if(fname != '' && lname == '' && percent == '' && status ==''){
                var percent = 0;
                var status = 0;
                var sql = `select studentMaster.id,f_name,l_name,count(attendence.attendence) as 'present',concat(ceiling((count(attendence.attendence)/91)*100),'%') as 'percentage' from studentMaster join attendence on studentMaster.id = attendence.id and attendence.attendence = 'P' and f_name like '${fname}%' group by attendence.id order by studentMaster.id`;
                con.query(sql,(e,result)=>{
                    if(e) throw e;
                    res.render('fps/order',{result,percent,status,symbol1,symbol2,sql});
                });
             }

            else if(fname != '' && lname != '' && percent == '' && status ==''){
                var percent = 0;
                var status = 0;
                var sql = `select studentMaster.id,f_name,l_name,count(attendence.attendence) as 'present',concat(ceiling((count(attendence.attendence)/91)*100),'%') as 'percentage' from studentMaster join attendence on studentMaster.id = attendence.id and attendence.attendence = 'P' and f_name like '${fname}%' and l_name like '${lname}%' group by id order by studentMaster.id`;
                con.query(sql,(e,result)=>{
                    if(e) throw e;
                    res.render('fps/order',{result,percent,status,symbol1,symbol2,sql});
                })
            }
            else if(fname == '' && lname != '' && percent == '' && status ==''){
                var percent = 0;
                var status = 0;
                var sql = `select studentMaster.id,f_name,l_name,count(attendence.attendence) as 'present',concat(ceiling((count(attendence.attendence)/91)*100),'%') as 'percentage' from studentMaster join attendence on studentMaster.id = attendence.id and attendence.attendence = 'P' and l_name like '${lname}%' group by id order by studentMaster.id`;
                con.query(sql,(e,result)=>{
                    if(e) throw e;
                    res.render('fps/order',{result,percent,status,symbol1,symbol2,sql});
                })
            }
            else if(fname != '' && lname != '' && percent != '' && status ==''){
                var status = 0;
                var sql = `select studentMaster.id,f_name,l_name,count(attendence.attendence) as 'present',concat(ceiling((count(attendence.attendence)/91)*100),'%') as 'percentage' from studentMaster join attendence on studentMaster.id = attendence.id and attendence.attendence = 'P' and f_name like '${fname}%' and l_name like '${lname}%' group by id order by studentMaster.id`;
                con.query(sql,(e,result)=>{
                    if(e) throw e;
                    res.render('fps/order',{result,percent,status,symbol1,symbol2,sql});
                })
            }
            else if(fname != '' && lname != '' && percent != '' && status !=''){
                
                var sql = `select studentMaster.id,f_name,l_name,count(attendence.attendence) as 'present',concat(ceiling((count(attendence.attendence)/91)*100),'%') as 'percentage' from studentMaster join attendence on studentMaster.id = attendence.id and attendence.attendence = 'P' and f_name like '${fname}%' and l_name like '${lname}%' group by id order by studentMaster.id`;
                con.query(sql,(e,result)=>{
                    if(e) throw e;
                    res.render('fps/order',{result,percent,status,symbol1,symbol2,sql});
                })
            }
            else if(fname == '' && lname == '' && percent !='' && status !=''){
                
                var sql = `select studentMaster.id,f_name,l_name,count(attendence.attendence) as 'present',concat(ceiling((count(attendence.attendence)/91)*100),'%') as 'percentage' from studentMaster join attendence on studentMaster.id = attendence.id and attendence.attendence = 'P'  group by attendence.id order by studentMaster.id`;
                con.query(sql,(e,result)=>{
                    if(e) throw e;
                    res.render('fps/order',{result,percent,status,symbol1,symbol2,sql});
                })
            }
            else if(fname == '' && lname == '' && percent =='' && status !=''){
                percent = 0;
                var sql = `select studentMaster.id,f_name,l_name,count(attendence.attendence) as 'present',concat(ceiling((count(attendence.attendence)/91)*100),'%') as 'percentage' from studentMaster join attendence on studentMaster.id = attendence.id and attendence.attendence = 'P'  group by attendence.id order by studentMaster.id`;
                con.query(sql,(e,result)=>{
                    if(e) throw e;
                    res.render('fps/order',{result,percent,status,symbol1,symbol2,sql});
                })
            }
            else if(fname == '' && lname == '' && percent !='' && status ==''){
                status = 0;
                var sql = `select studentMaster.id,f_name,l_name,count(attendence.attendence) as 'present',concat(ceiling((count(attendence.attendence)/91)*100),'%') as 'percentage' from studentMaster join attendence on studentMaster.id = attendence.id and attendence.attendence = 'P'  group by attendence.id order by studentMaster.id`;
                con.query(sql,(e,result)=>{
                    if(e) throw e;
                    res.render('fps/order',{result,percent,status,symbol1,symbol2,sql});
                })
            }

        }
  }
  catch(e){
      console.log(e);
  }
});
module.exports = router;