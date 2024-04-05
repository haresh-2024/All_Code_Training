const con = require('../connection/connection');

const partForm = async (req,res)=>{
    
    try{
        res.render('partForm/index');
    }
    catch(e){
       res.send({
        alert : `error occur1 ${e}`
       })
    }
}
const form = async (req,res)=>{
    try{
        var data = req.body;
        // basic details insertion... 
        let index;
        var insert = `insert into basicDetails (fname,lname,designation,email,mobile,address,city,state,zipcode,gender,relationship,dob) values (?)`;
        var values = [data.fname,data.lname,data.des,data.email,data.num,data.add1+' '+data.add2,data.city,data.state,data.zip,data.gender,data.status,data.dob];
    
        var nre = "^[6-9]{1}[0-9]{9}$";
        var ereg = "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"; 

        if(data.fname == ''|| data.lname == '' || data.des == '' || data.email == '' || (data.add1 == '' && data.add2 == '') || data.num == '' || data.city == '' || data.zip == '' || data.dob == '' || data.gender == '' ){
            res.send({ alert : 'error occur'})
        }
        else if(!(data.email.match(ereg))){
            res.send({ alert : 'error occur'})
        }
        else if(!(data.num.match(nre))){
            res.send({ alert : 'error occur'})
        }
        else{
            var basicInsert = await con.query(insert,[values]);
            index = basicInsert[0]['insertId'];
        }
        
        // eduction details...

        var insert = `insert into educationDetails values ?`;

        if(data.sboard == '' || data.syear== '' || data.sper == '' || data.hboard == '' || data.hyear== '' || data.hper == '' || data.bboard == '' || data.bcourse == '' || data.byear == '' ||data.bper == ''){
            res.send({ alert : 'error occur'})
        }
        else if(data.mboard == '' || data.mcourse == '' || data.myear == '' || data.mper == ''){
            var values = [[index,'ssc','10th',data.sboard,data.syear,data.sper],
                          [index,'hsc','12th',data.hboard,data.hyear,data.hper],
                          [index,'be',data.bcourse,data.bboard,data.byear,data.bper]];
            await con.query(insert,[values]);
        }
        else if(data.mboard != '' && data.mcourse != '' && data.myear != '' && data.mper != ''){
            var values = [[index,'ssc','10th',data.sboard,data.syear,data.sper],
            [index,'hsc','12th',data.hboard,data.hyear,data.hper],
                          [index,'be',data.bcourse,data.bboard,data.byear,data.bper],
                          [index,'me',data.mcourse,data.mboard,data.myear,data.mper]];
            await con.query(insert,[values]);
        }
        else{
            res.send({ alert : 'error occur'})
       }
       
       // work experience

        var insert = `insert into workExper values (?)`;

        if(data.cname == '' || data.cdes== ''  || data.from == '' || data.cto == ''){

        }
        else{
            if(typeof(data.cname) == 'string'){
               values = [index,data.cname,data.cdes,data.cfrom,data.cto]
               await con.query(insert,[values]);
            }
            else{
                data.cname.forEach(async (element,ind) => {
                    if(data.cname[ind] == '' || data.cdes[ind]== ''  || data.cfrom[ind] == '' || data.cto[ind] == ''){
                        
                    }
                    else{
                        var values = [index,data.cname[ind],data.cdes[ind],data.cfrom[ind],data.cto[ind]];
                        await con.query(insert,[values]);
                    }
                });
            }
        }
       // language 
      
        
        if(typeof(data.gujarati) == 'undefined' && typeof(data.hindi) == 'undefined' && typeof(data.english) == 'undefined'){
            res.send({ alert : 'error occur'})
        }
        let lan = [data.hindi,data.gujarati,data.english];
        let language= ['Hindi','Gujarati','English'];
        lan.forEach(async(element,ind)=>{
            if(typeof(element) != 'undefined'){
                if(element[0] == language[ind]) {
                    let v1 = 'n';
                    let v2= 'n';
                    let v3 = 'n';
                    for(var j = 1;j<4;j++){
                         if(element[j] == 'Read'){v1='y';} 
                         if(element[j] == 'Write'){v2 = 'y';} 
                         if(element[j] == 'Speak'){v3 = 'y';}  
                        }
                    var insert = `insert into languageKnown values (${index},'${element[0]}','${v1}','${v2}','${v3}')`;
                    await con.query(insert);
                }
            }
        });

       // technoligies

        if(typeof(data.larvel) == 'undefined' && typeof(data.php) == 'undefined' && typeof(data.oracle) == 'undefined' && typeof(data.mysql) == 'undefined'){
            res.send({ alert : 'error occur'})
        }

        let tech = [data.php,data.larvel,data.mysql,data.oracle];
        let technoligies = [data.rphp,data.rlarvel,data.rmysql,data.roracle];
        let realValue = ['php','larvel','mysql','oracle'];
        tech.forEach(async(element,ind)=>{
            if(typeof(element) != 'undefined'){
                if(element == realValue[ind]) {
        
                     var insert = `insert into technologie values (${index},'${realValue[ind]}','${technoligies[ind]}')`;
                     await con.query(insert);
                    
                }
            }
        });

    // referances
     var insert = `insert into referance values (?)`;
 
    if(data.refname == '' || data.refcon == '' || data.refrel == ''){

    }
    else{

        if(typeof(data.refname) == 'string'){
           var values = [index,data.refname,data.refcon,data.refrel];
           await con.query(insert,[values]);
        }
        else{

            data.refname.forEach(async (element,ind) => {
              
                if(data.refname[ind] == '' && data.refcon[ind] == '' && data.refrel[ind] == ''){}

                else if(data.refname[ind] == '' || data.refcon[ind] == '' || data.refrel[ind] == ''){
                    let ref = [data.refname[ind],data.refcon[ind],data.refrel[ind]];
                    ref.forEach(element =>{
                        if(element != ''){ 
                            res.send({ alert : 'error occur'})
                        }
                    });
                }
            else{
                        
                            if(data.refname[ind] == '' && data.refcon[ind] == '' && data.refrel[ind] == ''){}
                            
                            else{       
                                var values = [index,data.refname[ind],data.refcon[ind],data.refrel[ind]];
                                await con.query(insert,[values]);
                            }
                
            }
        });
            
    // preferance
    
    var insert = `insert into preferance values (?)`;
    if(data.notice == '' || data.ectc == '' || data.cctc == ''){
        res.send({ alert : 'error occur'})
    }
    else{
        var values = [index,data.loc,data.notice,data.ectc,data.cctc,data.dept];
        var basicInsert = await con.query(insert,[values]);
    }
   
    res.send({ alert : 'data inserted...'});
}
}
}

    catch(e){
        res.send({ alert : 'error occur'})
    }
}

// update...
const update = async (req,res)=>{
    try{
        res.render('partForm/index');
    }
    catch(e){
        res.send({
            alert: `error occur ${e}`
        })
    }
}


const partUpdate = async (req,res)=>{
    try{
        var id = req.query.id;
        var sql1 = `select * from basicDetails where Id = ${id}`;
        var sql2 = `select * from educationDetails where Id = ${id}`;
        var sql3 = `select * from workExper where Id = ${id}`;
        var sql4 = `select * from languageKnown where Id = ${id}`;
        var sql5 = `select * from technologie where Id = ${id}`;
        var sql6 = `select * from referance where Id = ${id}`;
        var sql7 = `select * from preferance where Id = ${id}`;
        
        let result1 = await con.query(sql1);
        let result2 = await con.query(sql2);
        let result3 = await con.query(sql3);
        let result4 = await con.query(sql4);
        let result5 = await con.query(sql5);
        let result6 = await con.query(sql6);
        let result7 = await con.query(sql7);
        
        result1 = result1[0];
        result2 = result2[0];
        result3 = result3[0];
        result4 = result4[0];
        result5 = result5[0];
        result6 = result6[0];
        result7 = result7[0];

        res.send({
            res1 : result1,
            res2 : result2,
            res3 : result3,
            res4 : result4,
            res5 : result5,
            res6 : result6,
            res7 : result7
        })
    }
    catch(e){
        res.send({
            alert: `error occur14 ${e}`
        })
    }
}

// .......

const formUpdate  = async (req,res)=>{
    
try{
        var data = req.body;
        var id = req.get('userId');
        
        // basic details update... 
       
        var update = `update basicDetails set fname = ?,lname = ?,designation= ?,email = ?,mobile = ?,address=?,city=?,state = ?,zipcode= ?,gender = ?,relationship = ?,dob = ? where Id = ?`;
        let basic = [data.fname,data.lname,data.des,data.email,data.num,data.add1+" "+data.add2,data.city,data.state,data.zip,data.gender,data.status,data.dob,id];
        var nre = "^[6-9]{1}[0-9]{9}$";
        var ereg = "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"; 

        if(data.fname == ''|| data.lname == '' || data.des == '' || data.email == '' || (data.add1 == '' && data.add2 == '') || data.num == '' || data.city == '' || data.zip == '' || data.dob == '' || data.gender == '' ){
            res.send({ alert : 'error occur'})
        }
        else if(!(data.email.match(ereg))){
            res.send({ alert : 'error occur'})
        }
        else if(!(data.num.match(nre))){
            res.send({ alert : 'error occur'})
        }
        else{
            await con.query(update,basic);
        }
        
        // eduction details...

        var insert = `update educationDetails set courseName = ?,board = ?,year = ?,percentage = ? where Id = ? and degree = ?` ;

        if(data.sboard == '' || data.syear== '' || data.sper == '' || data.hboard == '' || data.hyear== '' || data.hper == '' || data.bboard == '' || data.bcourse == '' || data.byear == '' ||data.bper == ''){
            res.send({ alert : 'error occur'})
        }
        else if(data.mboard == '' || data.mcourse == '' || data.myear == '' || data.mper == ''){
            var values = [['10th',data.sboard,data.syear,data.sper,id,'ssc'],
                          ['12th',data.hboard,data.hyear,data.hper,id,'hsc'],
                          [data.bcourse,data.bboard,data.byear,data.bper,id,'be']];
            values.forEach(async element =>{
                await con.query(insert,element);
    
            });
        }
        else if(data.mboard != '' && data.mcourse != '' && data.myear != '' && data.mper != ''){
          
            var values = [['10th',data.sboard,data.syear,data.sper,id,'ssc'],
                          ['12th',data.hboard,data.hyear,data.hper,id,'hsc'],
                          [data.bcourse,data.bboard,data.byear,data.bper,id,'be'],
                          [data.mcourse,data.mboard,data.myear,data.mper,id,'me']];
            values.forEach(async element =>{
              await con.query(insert,element);
            });
        }
        else{
            res.send({ alert : 'error occur'})
       }

       // work experience
       
       let workUpdate = `update workExper set cname = ?,designation = ?,fromW = ?,toW = ? where Id = ? and cname = ?`;
            if(typeof(data.cname) == 'string'){
                let values = [data.cname,data.cdes,data.cfrom,data.cto,id,data.cname];
                await con.query(workUpdate,values);
            }
            else{
                data.cname.forEach(async (element,index) => {
                    let values  = [data.cname[index],data.cdes[index],data.cfrom[index],data.cto[index],id,data.cname[index]];
                    await con.query(workUpdate,values);
                });
            }
// language
            if(typeof(data.gujarati) == 'undefined' && typeof(data.hindi) == 'undefined' && typeof(data.english) == 'undefined'){
                res.send({ alert : 'error occur'})
            }
            let lan = [data.hindi,data.gujarati,data.english];
            let language= ['Hindi','Gujarati','English'];
            lan.forEach(async(element,ind)=>{
                if(typeof(element) != 'undefined'){
                    if(element[0] == language[ind]) {
                        let v1 = 'n';
                        let v2= 'n';
                        let v3 = 'n';
                        for(var j = 1;j<4;j++){
                             if(element[j] == 'Read'){v1='y';} 
                             if(element[j] == 'Write'){v2 = 'y';} 
                             if(element[j] == 'Speak'){v3 = 'y';}  
                            }
                        let update =`update languageKnown set lread = ?,lwrite = ?,speak = ? where language = ? and Id = ?`;
                        let value = [v1,v2,v3,element[0],id];
                        await con.query(update,value);
                    }
                }
            });
        
            if(typeof(data.larvel) == 'undefined' && typeof(data.php) == 'undefined' && typeof(data.oracle) == 'undefined' && typeof(data.mysql) == 'undefined'){
                res.send({ alert : 'error occur'})
            }
    
            let tech = [data.php,data.larvel,data.mysql,data.oracle];
            let technoligies = [data.rphp,data.rlarvel,data.rmysql,data.roracle];
            let realValue = ['php','larvel','mysql','oracle'];
            tech.forEach(async(element,ind)=>{
                if(typeof(element) != 'undefined'){
                    if(element == realValue[ind]) {

                         let update = `update technologie set level = ? where technologies = ? and Id = ?`;
                         let value = [technoligies[ind],element,id]
                         await con.query(update,value);
                       
                    }
                }
            });


            let refUpdate = `update referance set name = ?,contact = ?,relationship = ? where Id = ?`
            if(data.refname == '' || data.refcon == '' || data.refrel == ''){

            }
            else{
        
                if(typeof(data.refname) == 'string'){
                   var values = [data.refname,data.refcon,data.refrel,id];
                   await con.query(refUpdate,values);
                }
                else{
           
                    for(var i=0;i<data.refname.length;i++){
                      
                        if(data.refname[i] == '' && data.refcon[i] == '' && data.refrel[i] == ''){}
        
                        else if(data.refname[i] == '' || data.refcon[i] == '' || data.refrel[i] == ''){
                          let ref = [data.refname[i],data.refcon[i],data.refrel[i]];
                          ref.forEach(element =>{
                              if(element != ''){ 
                                res.send({ alert : 'error occur'})
                              }
                          })
                       }
                       else{
                                data.cname.forEach(async (element,index) => {
                                    
                                    if(data.refname[index] == '' && data.refcon[index] == '' && data.refrel[index] == ''){}
                                    
                                    else{       
                                        var values = [data.refname[index],data.refcon[index],data.refrel[index],id];
                                        await con.query(update,values);
                                    }
                                });
                       }
                    }
               }
            }
   
            if(data.notice == '' || data.ectc == '' || data.cctc == ''){
                res.send({ alert : 'error occur'})
           }
           else{
               let values = [data.loc,data.notice,data.ectc,data.cctc,data.dept,id];
               let update = `update preferance set location = ?,notice = ?,ectc = ?,cctc = ?,department = ? where Id = ?`;
                await con.query(update,values);
           }
    res.send({
        alert: 'Data Updated Successfully...'
    })
}
    catch(e){
        res.send({
            alert : `error occur ${e}`
        })
    }
}

module.exports = {partForm,form,update,partUpdate,formUpdate};