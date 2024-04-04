const con = require('../connection/connection');


const index = async (req,res)=>{
    
    try{
        res.render('insertejs/home');
    }
    catch(e){
        console.log(e);
    }
}
const insertPage =  async (req,res)=>{
    
    try{
        res.render('insertejs/main');
    }
    catch(e){
        console.log(e);
    }
}
const insert = async (req,res)=>{
    try{

        var data = req.body;
        console.log(data);
        // basic details insertion... 
        let index;
        var insert = `insert into basicDetails (fname,lname,designation,email,mobile,address,city,state,zipcode,gender,relationship,dob) values (?)`;
        var values = [data.fname,data.lname,data.des,data.email,data.num,data.add1+data.add2,data.city,data.state,data.zip,data.gender,data.status,data.dob];
    
        var nre = "^[6-9]{1}[0-9]{9}$";
        var ereg = "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"; 

        if(data.fname == ''|| data.lname == '' || data.des == '' || data.email == '' || (data.add1 == '' && data.add2 == '') || data.num == '' || data.city == '' || data.zip == '' || data.dob == '' || data.gender == '' ){
            var e = 'internal server error...';
            res.render('insertejs/error',{e});
        }
        else if(!(data.email.match(ereg))){
            var e = 'internal server error...';
            res.render('insertejs/error',{e});
        }
        else if(!(data.num.match(nre))){
            var e = 'internal server error...';
            res.render('insertejs/error',{e});
        }
        else{
            var basicInsert = await con.query(insert,[values]);
            index = basicInsert[0]['insertId'];
        }
        
        // eduction details...

        var insert = `insert into educationDetails values ?`;

        if(data.sboard == '' || data.syear== '' || data.sper == '' || data.hboard == '' || data.hyear== '' || data.hper == '' || data.bboard == '' || data.bcourse == '' || data.byear == '' ||data.bper == ''){
            e = 'internal server error...';
            res.render('insertejs/error',{e});
        }
        else if(data.mboard == '' || data.mcourse == '' || data.myear == '' || data.mper == ''){
            var values = [[index,'ssc','10th',data.sboard,data.syear,data.sper],
                          [index,'hsc','12th',data.hboard,data.hyear,data.hper],
                          [index,'be',data.bboard,data.bcourse,data.byear,data.bper]];
            await con.query(insert,[values]);
        }
        else if(data.mboard != '' && data.mcourse != '' && data.myear != '' && data.mper != ''){
            var values = [[index,'ssc','10th',data.sboard,data.syear,data.sper],
            [index,'hsc','12th',data.hboard,data.hyear,data.hper],
                          [index,'be',data.bboard,data.bcourse,data.byear,data.bper],
                          [index,'me',data.mboard,data.mcourse,data.myear,data.mper]];
            await con.query(insert,[values]);
        }
        else{
        var e = "internal sever error...";
        res.render('insertejs/error',{e});
       }
       
       // work experience

        var insert = `insert into workExper values (?)`;
        if(typeof(data.cname) == 'string'){
           values = [index,data.cname,data.cdes,data.cfrom,data.cto]
           await con.query(insert,[values]);
        }
        else{
            data.cname.forEach(async (element,index) => {
                var values = [index,data.cname[index],data.cdes[index],data.cfrom[index],data.cto[index]];
                await con.query(insert,[values]);
            });
        }
       // language 
      
        var v1 = 'n';
        var v2= 'n';
        var v3 = 'n';
        if(typeof(data.gujarati) == 'undefined' && typeof(data.hindi) == 'undefined' && typeof(data.english) == 'undefined'){
            var e = "internal server error...";
            res.render('insertejs/error',{e});
        }
        if(typeof(data.gujarati) != 'undefined'){
            if(data.gujarati[0] == 'Gujarati') {
                 for(var j = 1;j<data.gujarati.length;j++){
                     if(data.gujarati[j] == 'Read'){v1='y';} 
                     if(data.gujarati[j] == 'Write'){v2 = 'y';} 
                     if(data.gujarati[j] == 'Speak'){v3 = 'y';}  
                 }
                 var insert = `insert into languageKnown values (${index},'Gujarati','${v1}','${v2}','${v3}')`;
                 await con.query(insert);
            }
        }
        if(typeof(data.hindi) != 'undefined'){
            if(data.hindi[0] == 'Hindi'){
            for(var j = 1;j<data.hindi.length;j++){
                if(data.hindi[j] == 'Read'){v1='y';} 
                if(data.hindi[j] == 'Write'){v2 = 'y';} 
                if(data.hindi[j] == 'Speak'){v3 = 'y';}  
            }
            var insert = `insert into languageKnown values (${index},'Hindi','${v1}','${v2}','${v3}')`;
            await con.query(insert);
         }
       }
       if(typeof(data.english) != 'undefined'){
         if(data.english[0] == 'English'){
            for(var j = 1;j<data.english.length;j++){
                if(data.english[j] == 'Read'){v1='y';} 
                if(data.english[j] == 'Write'){v2 = 'y';} 
                if(data.english[j] == 'Speak'){v3 = 'y';}  
            }
            var insert = `insert into languageKnown values (${index},'English','${v1}','${v2}','${v3}')`;
            await con.query(insert);
         }
       }

       // technoligies

        var v1 = 'n';
        var v2= 'n';
        var v3 = 'n';
        if(typeof(data.larvel) == 'undefined' && typeof(data.php) == 'undefined' && typeof(data.oracle) == 'undefined' && typeof(data.mysql) == 'undefined'){
            var e = "internal error...";
            res.render('insertejs/error',{e});
        }
        if(typeof(data.php) != 'undefined'){
            if(data.php == 'php'){
                console.log('hiii');
                 var insert = `insert into technologie values (${index},'php','${data.rphp}')`;
                 await con.query(insert);
            }
        }
       if(typeof(data.larvel) != 'undefined'){
           if(data.larvel == 'larvel'){
            var insert = `insert into technologie values (${index},'larvel','${data.rlarvel}')`;
            await con.query(insert);
           }
       }
       if(typeof(data.mysql) != 'undefined'){
           if(data.mysql == 'mysql'){
            var insert = `insert into technologie values (${index},'mysql','${data.rmysql}')`;
            await con.query(insert);
           }
       }
       if(typeof(data.oracle) != 'undefined'){
           if(data.oracle == 'oracle'){
             var insert = `insert into technologie values (${index},'oracle','${data.roracle}')`;
             await con.query(insert);
           }
       }
 

    // referances
     var insert = `insert into referance values (?)`;

     if(typeof(data.refname) == 'string'){
        var values = [index,data.refname,data.refcon,data.refrel];
        await con.query(insert,[values]);
     }
     else{

         for(var i=0;i<data.refname.length;i++){
            if(data.refname[i] == '' && data.refcon[i] == '' && data.refrel[i] == ''){}
            else if(data.refname[i] == '' ||data.refcon[i] == '' || data.refrel[i] == ''){
                if(data.refname[i] != ''){ 
                    var e = 'internal server error';
                    res.render('insertejs/error',{e});
                }
                if(data.refcon[i] != ''){
                    var e = 'internal server error';
                    res.render('insertejs/error',{e});
                }
                if(data.refrel[i] != ''){
                    var e = 'internal server error';
                    res.render('insertejs/error',{e});
                }
            }
            else{
                     data.cname.forEach(async (element,index) => {
                        var values = [index,data.refname[index],data.refcon[index],data.refrel[index]];
                        await con.query(insert,[values]);
                     });
            }
         }
    }

    // preferance
    
    var insert = `insert into preferance values (?)`;
    if(data.notice == '' || data.ectc == '' || data.cctc == ''){
         var e ="internal server error...";
         res.render('insertejs/error',{e});
    }
    else{
        var values = [index,data.loc,data.notice,data.ectc,data.cctc,data.dept];
        var basicInsert = await con.query(insert,[values]);
    }

    res.render('insertejs/result');
}
    catch(e){
        res.render('insertejs/error',{e});
        console.log(e);
    }
}

// update

var read = async (req,res)=>{
    try{
        var id = req.params.id;
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

        res.render('insertejs/update',{result1,result2,result3,result4,result5,result6,result7,id});
    }
    catch(e){
        res.render('insertejs/error',{e});
    }
}
const show = async (req,res)=>{
     try{
         let sql = 'select * from basicDetails';
         let result = await con.query(sql);
         result = result[0];
         res.render('insertejs/table',{result});
     }
     catch(e){
        console.log(e);
     }
}

const update = async (req,res)=>{
    try{
        var data = req.body;
        var id = req.params.id;
        console.log(data);
        // basic details update... 
       
        var update = `update basicDetails set fname = '${data.fname}',lname = '${data.lname}',designation='${data.des}',email = '${data.email}',mobile = '${data.num}',address='${data.add1+' '+data.add2}',city='${data.city}',state = '${data.state}',zipcode= '${data.zip}',gender = '${data.gender}',relationship = '${data.status}',dob = '${data.dob}' where Id = ${id}`;
        console.log(update);
        var nre = "^[6-9]{1}[0-9]{9}$";
        var ereg = "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"; 

        if(data.fname == ''|| data.lname == '' || data.des == '' || data.email == '' || (data.add1 == '' && data.add2 == '') || data.num == '' || data.city == '' || data.zip == '' || data.dob == '' || data.gender == '' ){
            var e = 'internal server error...';
            res.render('insertejs/error',{e});
        }
        else if(!(data.email.match(ereg))){
            var e = 'internal server error...';
            res.render('insertejs/error',{e});
        }
        else if(!(data.num.match(nre))){
            var e = 'internal server error...';
            res.render('insertejs/error',{e});
        }
        else{
            var basicInsert = await con.query(update);
        }
        
        // eduction details...

        var insert = `update educationDetails set degree=?,courseName = ? ,board = ? percentage = ? where Id = ${id}`;

        if(data.sboard == '' || data.syear== '' || data.sper == '' || data.hboard == '' || data.hyear== '' || data.hper == '' || data.bboard == '' || data.bcourse == '' || data.byear == '' ||data.bper == ''){
            e = 'internal server error...';
            res.render('insertejs/error',{e});
        }
        else if(data.mboard == '' || data.mcourse == '' || data.myear == '' || data.mper == ''){
            var values = [['ssc','10th',data.sboard,data.syear,data.sper],
                          ['hsc','12th',data.hboard,data.hyear,data.hper],
                          ['be',data.bboard,data.bcourse,data.byear,data.bper]];
           values.forEach(async element =>{

            let insert = `update educationDetails set degree = '${element[0]}',courseName = '${element[1]}' ,board = '${element[2]}',year = '${element[3]}',percentage = '${element[4]}' where Id = ${id} and degree = '${element[0]}'`;
              await con.query(insert,[element]);
            });
        }
        else if(data.mboard != '' && data.mcourse != '' && data.myear != '' && data.mper != ''){
            var values = [['ssc','10th',data.sboard,data.syear,data.sper],
            ['hsc','12th',data.hboard,data.hyear,data.hper],
            ['be',data.bboard,data.bcourse,data.byear,data.bper],
            ['me',data.mboard,data.mcourse,data.myear,data.mper]];
        values.forEach(async element =>{
        let insert = `update educationDetails set degree = '${element[0]}',courseName = '${element[1]}' ,board = '${element[2]}',year = '${element[3]}',percentage = '${element[4]}' where Id = ${id} and degree = '${element[0]}'`;
        await con.query(insert,[element]); 
        });
    }
    else{
        var e = "internal sever error...";
        res.render('insertejs/error',{e});
    }
       
       // work experience

            if(typeof(data.cname) == 'string'){
                var update = `update workExper set cname = '${data.cname}',designation ='${data.cdes}',fromW = '${data.cfrom}',toW = '${data.cto}' where Id = ${id}`;
                await con.query(update);
            }
            else{
                data.cname.forEach(async (element,index) => {
                    var update = `update workExper set cname = '${data.cname[index]}',designation ='${data.cdes[index]}',fromW = '${data.cfrom[index]}',toW = '${data.cto[index]}' where Id = ${id}`;
                    await con.query(update);
                });
            }
        

       // language 
      
        var v1 = 'n';
        var v2= 'n';
        var v3 = 'n';
        if(typeof(data.gujarati) == 'undefined' && typeof(data.hindi) == 'undefined' && typeof(data.english) == 'undefined'){
            var e = "internal server error...";
            res.render('insertejs/error',{e});
        }
        if(typeof(data.gujarati) != 'undefined'){
            if(data.gujarati[0] == 'Gujarati'){
                 for(var j = 1;j<data.gujarati.length;j++){
                     if(data.gujarati[j] == 'Read'){v1='y';} 
                     if(data.gujarati[j] == 'Write'){v2 = 'y';} 
                     if(data.gujarati[j] == 'Speak'){v3 = 'y';}  
                 }
                 var insert = `update languageKnown set lread = '${v1}',lwrite = '${v2}',speak = '${v3}' where language = 'gujarati' and Id = ${id}`;
                 var result =  await con.query(insert);
            }
        }
        if(typeof(data.hindi) != 'undefined'){
            if(data.hindi[0] == 'Hindi'){
            for(var j = 1;j<data.hindi.length;j++){
                if(data.hindi[j] == 'Read'){v1='y';} 
                if(data.hindi[j] == 'Write'){v2 = 'y';} 
                if(data.hindi[j] == 'Speak'){v3 = 'y';}  
            }
            var insert = `update languageKnown set lread = '${v1}',lwrite = '${v2}',speak = '${v3}' where language = 'hindi' and Id = ${id}`;
            var result = await con.query(insert);
         }
       }
       if(typeof(data.english) != 'undefined'){
         if(data.english[0] == 'English'){
            for(var j = 1;j<data.english.length;j++){
                if(data.english[j] == 'Read'){v1='y';} 
                if(data.english[j] == 'Write'){v2 = 'y';} 
                if(data.english[j] == 'Speak'){v3 = 'y';}  
            }
            var insert = `update languageKnown set lread = '${v1}',lwrite = '${v2}',speak = '${v3}' where language = 'english' and Id = ${id}`;
            var result = await con.query(insert);
         }
       }

       // technoligies

        var v1 = 'n';
        var v2= 'n';
        var v3 = 'n';
        if(typeof(data.larvel) == 'undefined' && typeof(data.php) == 'undefined' && typeof(data.oracle) == 'undefined' && typeof(data.mysql) == 'undefined'){
            var e = "internal error...";
            res.render('insertejs/error',{e});
        }
        if(typeof(data.php) != 'undefined'){
            if(data.php[0] == 'php'){
                var insert = `update technologie set level = '${data.rphp}' where technologies = 'php' and Id = ${id}`;
                 await con.query(insert);
            }
        }
       if(typeof(data.larvel) != 'undefined'){
           if(data.larvel[0] == 'larvel'){
            var insert = `update technologie set level = '${data.rlarvel}' where technologies = 'laravel' and Id = ${id}`;
            await con.query(insert);
           }
       }
       if(typeof(data.mysql) != 'undefined'){
           if(data.mysql[0] == 'mysql'){
            var insert = `update technologie set level = '${data.rmysql}' where technologies = 'mysql' and Id = ${id}`;
            await con.query(insert);
           }
       }
       if(typeof(data.oracle) != 'undefined'){
           if(data.oracle[0] == 'oracle'){
            var insert = `update technologie set level = '${data.roracle}' where technologies = 'oracle' and Id = ${id}`; 
            await con.query(insert);
           }
       }
 

    // referances
  
     for(var i=0;i<data.refname.length;i++){
        if(data.refname[i] == '' && data.refcon[i] == '' && data.refrel[i] == ''){}
        else if(data.refname[i] == '' ||data.refcon[i] == '' || data.refrel[i] == ''){
            if(data.refname[i] != ''){ 
                var e = 'internal server error';
                res.render('insertejs/error',{e});
            }
            if(data.refcon[i] != ''){
                var e = 'internal server error';
                res.render('insertejs/error',{e});
            }
            if(data.refrel[i] != ''){
                var e = 'internal server error';
                res.render('insertejs/error',{e});
            }
        }
        else{
            var values = [index,data.refname,data.refcon,data.refrel];
            var insert = `update referance set name = '${values[1]}',contact = '${values[2]}',relationship = '${values[3]}' where Id = ${id}`;
            await con.query(insert);
        }
    }

    // preferance
    
    if(data.notice == '' || data.ectc == '' || data.cctc == ''){
         var e ="internal server error...";
         res.render('insertejs/error',{e});
    }
    else{
        var values = [index,data.loc,data.notice,data.ectc,data.cctc,data.dept];
        var insert = `update preferance set location = '${values[1]}',notice = '${values[2]}',ectc = '${values[3]}',cctc = '${values[4]}',department = '${values[5]}' where Id = ${id}`;
        await con.query(insert);
    }

    res.render('insertejs/result');
    
    }
    catch(e){
        res.render('insertejs/error',{e});
    }
}

module.exports = {index,insert,read,insertPage,update,show};