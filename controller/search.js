const con = require('../connection/connection');

const index = async (req,res)=>{
      try{
          res.render('delimeterSearch/main');
        }
        catch(e){
            res.render('delimeterSearch/error',{e});
        }
}
const process = async (req,res)=>{
    try{
       var input = req.body.input;
       var ar = Array.from(input);
       var fi = [];
       var li = [];
       var ei = [];
       var di = [];
       var mi = [];
       var ci = [];
       var arr = [];
       ar.forEach((element,index) => {
        
            if(element === '='){
                    fi.push(index);
                    arr.push(index);
            }
        });
    
       ar.forEach((element,index) => {
            if(element === '^'){
            li.push(index);
            arr.push(index);
            }
        });
        ar.forEach((element,index) => {
            if(element === '$'){
            ei.push(index);
            arr.push(index);
            }
        });
        ar.forEach((element,index) => {
            if(element === '}'){
            di.push(index);
            arr.push(index);
            }
        });
        ar.forEach((element,index) => {
            if(element === '{'){
            mi.push(index);
            arr.push(index);
            }
        });
        ar.forEach((element,index) => {
            if(element === ':'){
            ci.push(index);
            arr.push(index);
            }
        });
    
       arr.sort((a,b)=>{
        return a-b;
       })
   
       if(fi.length < 1 && li.length < 1  && ei.length < 1 && mi.length < 1 && di.length < 1 && ci.length < 1 ){
        
           if(fi.length == 0 || li.length == 0 || ei.length == 0 || mi.length == 0 || di.length == 0 || ci.length == 0 ){
               
         
               var first = input.slice(fi[0]+1,arr[arr.indexOf(fi[0])+1]);
               var last = input.slice(li[0]+1,arr[arr.indexOf(li[0])+1]);
               var email = input.slice(ei[0]+1,arr[arr.indexOf(ei[0])+1]);
               var mobile = input.slice(mi[0]+1,arr[arr.indexOf(mi[0])+1]);
               var dob = input.slice(di[0]+1,arr[arr.indexOf(di[0])+1]);
               var city = input.slice(ci[0]+1,arr[arr.indexOf(ci[0])+1]);
               var sql = `select * from studentMaster where f_name like '${first}%' and l_name like '${last}%' and email like '${email}%' and No like '${mobile}%' and dob like '${dob}%' and city like '${city}%'`;
        
               var result = await con.query(sql);
               result = result[0];
               console.log(arr,fi);
               res.render('delimeterSearch/search',{result});
            }
       }
        else{
             var first;
             var last;
             var email;
             var mobile;
             var dob;
             var city;
             
            first = 'f_name like ';
            last = 'l_name like '; 
            email = 'email like'
            mobile = 'No like ';
            dob = 'dob like ';
            city = 'city like ';
                 
             if(fi.length == 0 || li.length == 0 || ei.length == 0 || mi.length == 0 || di.length == 0 || ci.length == 0 ){
                if(fi.length == 0){
                    first = `f_name like '%'`;
                }
                if(li.length == 0){
                    last = `l_name like '%'`; 
                }
                if(ei.length == 0){
                    email = `email like '%'`;
                }
                if(mi.length == 0){
                    mobile = `No like '%'`;
                }
                if(di.length == 0){
                    dob = `dob like '%'`;
                }
                if(ci.length == 0){
                    city = `city like '%'`;
                }
            }
                fi.forEach((element,index) => {
                    
                    if( index == 0){
                        if(index == fi.length-1){
                            first = '('+first +`'${input.slice(fi[index]+1,arr[arr.indexOf(fi[index])+1])}%')`;
                        }
                        else{
    
                            first = '('+first +`'${input.slice(fi[index]+1,arr[arr.indexOf(fi[index])+1])}%'`;
                        }
                    }
                    else if(index < fi.length-1 && index > 0){
                        first = first +' or ' + ' f_name like ' + `'${input.slice(fi[index]+1,arr[arr.indexOf(fi[index])+1])}%'`;
                    }
                    else{
                        first = first  + ' or ' + ' f_name like ' +`'${input.slice(fi[index]+1,arr[arr.indexOf(fi[index])+1])}%')`;
                    }
                });
                li.forEach((element,index) => {
                   
                   
                    if( index == 0){
                        if(index == li.length-1){
                            last = '('+last +`'${input.slice(li[index]+1,arr[arr.indexOf(li[index])+1])}%')`;
                        }
                        else{
                            last = '('+last +`'${input.slice(li[index]+1,arr[arr.indexOf(li[index])+1])}%'`;
                        }
                    }
                    else if(index < li.length-1 && index > 0){
                        last = 'or' + last +' l_name like ' + `'${input.slice(li[index]+1,arr[arr.indexOf(li[index])+1])}%'` ;
                    }
                    else{
                        last = last + ' or '+' l_name like ' +`'${input.slice(li[index]+1,arr[arr.indexOf(li[index])+1])}%)'`;
                    }
                });
            }
            ei.forEach((element,index) => {
                
                if( index == 0 ){
                    if(index == ei.length-1){
                        email ='('+ email +`'${input.slice(ei[index]+1,arr[arr.indexOf(ei[index])+1])}%')`;
                    }
                    else{
                        email ='('+ email +`'${input.slice(ei[index]+1,arr[arr.indexOf(ei[index])+1])}%'`;
                    }
                }
                else if(index < ei.length-1 && index > 0){
                    email = email +  ' or '+' email like ' + `'${input.slice(ei[index]+1,arr[arr.indexOf(ei[index])+1])}%'` ;
                }
              
                else{
                    email = email  + ' or '+' email like ' +`'${input.slice(ei[index]+1,arr[arr.indexOf(ei[index])+1])}%)'`;
                }
            });
            mi.forEach((element,index) => {
                
                if( index == 0 ){
                    if(index == mi.length-1){
                        mobile ='('+ mobile +`'${input.slice(mi[index]+1,arr[arr.indexOf(mi[index])+1])}%')`;
                    }
                    else{
                        mobile ='('+ mobile +`'${input.slice(mi[index]+1,arr[arr.indexOf(mi[index])+1])}%'`;
                    }
                }
                else if(index < mi.length-1 && index > 0){
                    mobile = mobile +  ' or '+' No like ' + `'${input.slice(mi[index]+1,arr[arr.indexOf(mi[index])+1])}%'`;
                }
               
                else{
                    mobile = mobile +  ' or '+' No like ' +`'${input.slice(mi[index]+1,arr[arr.indexOf(mi[index])+1])}%)'`;
                }
            });
            di.forEach((element,index) => {
                
                if( index == 0){
                    if(index == di.length-1){
                        dob ='('+dob +`'${input.slice(di[index]+1,arr[arr.indexOf(di[index])+1])}%')`;
                    }
                    else{

                        dob ='('+dob +`'${input.slice(di[index]+1,arr[arr.indexOf(di[index])+1])}%'`;
                    }
                }
                else if(index < di.length-1 && index > 0){
                    dob = dob  +  ' or '+' dob like ' + `'${input.slice(di[index]+1,arr[arr.indexOf(di[index])+1])}%'`;
                }
               
                else{
                    dob = dob +  ' or '+ ' dob like ' +`'${input.slice(di[index]+1,arr[arr.indexOf(di[index])+1])}%)'`;
                }
            });
            ci.forEach((element,index) => {
                
                if( index == 0){
                    if(index == ci.length-1){
                    city = '('+city +`'${input.slice(ci[index]+1,arr[arr.indexOf(ci[index])+1])}%')`;

                    }
                    else{
                        city = '('+city +`'${input.slice(ci[index]+1,arr[arr.indexOf(ci[index])+1])}%'`;
                    }
                }
                else if(index < ci.length-1 && index > 0){
                    city = city  +  ' or '+' city like ' + `'${input.slice(ci[index]+1,arr[arr.indexOf(ci[index])+1])}%'` ;
                }
                
                else{
                    city = city  +  ' or '+ ' city like ' +`'${input.slice(ci[index]+1,arr[arr.indexOf(ci[index])+1])}%)'`;
                }
            });
            
    
            var sql = `select * from studentMaster where ${first} and ${last} and ${email} and ${mobile} and ${dob} and ${city}`;
           
            var result = await con.query(sql);
            result = result[0];
           
           res.render('delimeterSearch/search',{result});
        }    
    
    catch(e){
      res.render('delimeterSearch/error',{e});
    }
}

module.exports = {index,process};