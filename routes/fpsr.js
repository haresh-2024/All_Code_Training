const express = require("express");
const router = express.Router();
const con = require('../connection');


router.get('/',async (req,res)=>{
    try{
        var  i = 1;
        var first=i;
        var last = i*10;
        var sql = "select studentMaster.id,concat(f_name,' ',l_name) as 'full_name',(select sum(result.obtainMark_t ) from result where result.examtype = 'terminal' and  studentMaster.id= result.enroll  group by result.enroll) as 'terminal_t',(select sum(result.obtainMark_p ) from result where result.examtype = 'terminal' and  studentMaster.id= result.enroll  group by result.enroll) as 'terminal_p',(select sum(result.obtainMark_t ) from result where result.examtype = 'preliminary' and  studentMaster.id= result.enroll  group by result.enroll) as 'premi_t',(select sum(result.obtainMark_p) from result where result.examtype = 'preliminary' and  studentMaster.id= result.enroll  group by result.enroll) as 'premi_p',(select sum(result.obtainMark_t ) from result where result.examtype = 'final' and  studentMaster.id= result.enroll  group by result.enroll) as 'final_t',(select sum(result.obtainMark_p ) from result where result.examtype = 'final' and  studentMaster.id= result.enroll  group by result.enroll) as 'final_p',(select sum(result.obtainMark_t )+sum(result.obtainMark_p) from result where studentMaster.id= result.enroll  group by result.enroll) as 'total' from studentMaster join result on studentMaster.id = result.enroll group by result.enroll limit 10";
        var result1 = await con.query(sql);
        result = result1[0];
        console.log(result)
        res.render('fpsr/index',{result,i,first,last});
    }
    catch(e){
        console.log("Something went Wrong..."+e);
    }
})

router.get('/oprev/:Id/',async(req,res)=>{
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
            first= last-10+1;
        }
        var sql = `select studentMaster.id,concat(f_name,' ',l_name) as 'full_name',(select sum(result.obtainMark_t ) from result where result.examtype = 'terminal' and  studentMaster.id= result.enroll  group by result.enroll) as 'terminal_t',(select sum(result.obtainMark_p ) from result where result.examtype = 'terminal' and  studentMaster.id= result.enroll  group by result.enroll) as 'terminal_p',(select sum(result.obtainMark_t ) from result where result.examtype = 'preliminary' and  studentMaster.id= result.enroll  group by result.enroll) as 'premi_t',(select sum(result.obtainMark_p) from result where result.examtype = 'preliminary' and  studentMaster.id= result.enroll  group by result.enroll) as 'premi_p',(select sum(result.obtainMark_t ) from result where result.examtype = 'final' and  studentMaster.id= result.enroll  group by result.enroll) as 'final_t',(select sum(result.obtainMark_p ) from result where result.examtype = 'final' and  studentMaster.id= result.enroll  group by result.enroll) as 'final_p',(select sum(result.obtainMark_t )+sum(result.obtainMark_p) from result where studentMaster.id= result.enroll  group by result.enroll) as 'total' from studentMaster join result on studentMaster.id = result.enroll group by result.enroll limit 10 offset ? `;
        var result1 = await con.query(sql,value);
        result = result1[0];
        res.render('fpsr/index',{result,i,first,last});
        
    }
    catch(e){
        console.log("Something went Wrong..."+e);
    }
})

router.get('/onext/:Id/',async(req,res)=>{
    try{
        var i = req.params.Id;
        var first=(i*10)+1;
        var last = first+9;
        var value = [i*10]; 
        var sql = `select studentMaster.id,concat(f_name,' ',l_name) as 'full_name',(select sum(result.obtainMark_t ) from result where result.examtype = 'terminal' and  studentMaster.id= result.enroll  group by result.enroll) as 'terminal_t',(select sum(result.obtainMark_p ) from result where result.examtype = 'terminal' and  studentMaster.id= result.enroll  group by result.enroll) as 'terminal_p',(select sum(result.obtainMark_t ) from result where result.examtype = 'preliminary' and  studentMaster.id= result.enroll  group by result.enroll) as 'premi_t',(select sum(result.obtainMark_p) from result where result.examtype = 'preliminary' and  studentMaster.id= result.enroll  group by result.enroll) as 'premi_p',(select sum(result.obtainMark_t ) from result where result.examtype = 'final' and  studentMaster.id= result.enroll  group by result.enroll) as 'final_t',(select sum(result.obtainMark_p ) from result where result.examtype = 'final' and  studentMaster.id= result.enroll  group by result.enroll) as 'final_p',(select sum(result.obtainMark_t )+sum(result.obtainMark_p) from result where studentMaster.id= result.enroll  group by result.enroll) as 'total' from studentMaster join result on studentMaster.id = result.enroll group by result.enroll limit 10 offset ?`;
        i++;
        var result1 = await con.query(sql,value);
        result = result1[0];
        res.render('fpsr/index',{result,i,first,last});
        
    }
    catch(e){
        console.log("Something went Wrong..."+e);
    }
})

router.get('/olast',async (req,res)=>{
    try{
        var i = 30;
        var last = 300;
        var first= 290; 
        var sql = `select studentMaster.id,concat(f_name,' ',l_name) as 'full_name',(select sum(result.obtainMark_t ) from result where result.examtype = 'terminal' and  studentMaster.id= result.enroll  group by result.enroll) as 'terminal_t',(select sum(result.obtainMark_p ) from result where result.examtype = 'terminal' and  studentMaster.id= result.enroll  group by result.enroll) as 'terminal_p',(select sum(result.obtainMark_t ) from result where result.examtype = 'preliminary' and  studentMaster.id= result.enroll  group by result.enroll) as 'premi_t',(select sum(result.obtainMark_p) from result where result.examtype = 'preliminary' and  studentMaster.id= result.enroll  group by result.enroll) as 'premi_p',(select sum(result.obtainMark_t ) from result where result.examtype = 'final' and  studentMaster.id= result.enroll  group by result.enroll) as 'final_t',(select sum(result.obtainMark_p ) from result where result.examtype = 'final' and  studentMaster.id= result.enroll  group by result.enroll) as 'final_p',(select sum(result.obtainMark_t )+sum(result.obtainMark_p) from result where studentMaster.id= result.enroll  group by result.enroll) as 'total' from studentMaster join result on studentMaster.id = result.enroll group by result.enroll limit 10 offset ?`;
        var result1 = await con.query(sql,[first]);
        result = result1[0];
        res.render('fpsr/index',{result,i,first,last});
    }
    catch(e){
        console.log("Something went Wrong..."+e);
    }
})

router.get('/report/:Id',async (req,res) =>{
    
    var Id = req.params.Id;
    var sql = `select subjectMaster.subName,(select obtainMark_t from result where enroll = ${Id} and examtype = 'final' and result.subId = subjectMaster.subId)as 'final_t',(select obtainMark_p from result where enroll = ${Id} and examtype = 'final' and result.subId = subjectMaster.subId )as 'final_p',(select obtainMark_t from result where enroll = ${Id} and examtype = 'terminal'  and result.subId = subjectMaster.subId)as 'terminal_t',(select obtainMark_p from result where enroll = ${Id} and examtype = 'terminal' and result.subId = subjectMaster.subId)as 'terminal_p',(select obtainMark_t from result where enroll =  ${Id} and examtype = 'preliminary' and result.subId = subjectMaster.subId )as 'pre_t',(select obtainMark_p from result where enroll = ${Id} and examtype = 'preliminary' and result.subId = subjectMaster.subId )as 'pre_p' from result join subjectMaster on result.subId = subjectMaster.subId and enroll = ${Id} limit 6`;
    var sql1 = `select concat(f_name,' ',l_name) as 'full_name' from studentMaster where id= ${Id}`;
    var sql2 = `select count(id) as 'day' from attendence where id= ${Id} group by month(date)`;
    var daycount =await con.query(sql2);
    daycount = daycount[0];
    var arr = [];
    for(var j = 0;j<3;j++){
        arr.push(daycount[j].day);
    }
    var sql3 = `select concat(ceiling((count(attendence.attendence)/ ?)* 100),'%') as 'percentage' from attendence where id= ${Id} and attendence = 'P' group by month(date)`;

    var sql4 = `select sum(result.obtainMark_t )+sum(result.obtainMark_p) as 'total',concat(ceiling(( sum(result.obtainMark_t )+sum(result.obtainMark_p))/12),'%') as 'percen' from result join studentMaster on result.enroll = studentMaster.id and enroll = ${Id}`
    var result4 = await con.query(sql4)
    var result3 = await con.query(sql3,arr);
    var result1 = await con.query(sql);
    var result2 = await con.query(sql1);
    var result = result1[0];
    var name = result2[0];
    var percentage = result3[0];
    var rper = result4[0]; 
    res.render('fpsr/report',{result,Id,name,percentage,rper});
})

module.exports = router;