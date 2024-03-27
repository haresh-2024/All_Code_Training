const express = require("express");
const router = express.Router();
const con = require('../connection');
var MD5 = require("crypto-js/md5");
const jwt = require('jsonwebtoken');
const cookieParser = require('cookie-parser');
require('cookie-parser');
router.use(cookieParser());


router.post('/register',async(req,res)=>{

    try{
       var select = `select * from register where userName = '${req.body.user}'`;
       var result1 = await con.query(select);
       if(result1[0].length == 1){
           var select = `select * from register where userName = '${req.body.user}' and  status = 'inactive'`;
           var result = await con.query(select);
           if(result[0].length == 1){
               var update = `update register set created_at = current_timestamp  where userName = '${req.body.user}'`;
               await con.query(update); 
               var select = `select * from register where userName = '${req.body.user}'`
               var result = await con.query(select);
               res.send({ 
                   alert :'you already register but your account in inactive..',
                   pin : result[0][0].pin,
                   user : req.body.user
               })
           }
           else{
               res.send({
                   alert: 'user is already exits...'
               })
           }
       }
       else{
           

         var salt = randomString(4, '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ');
         var pin = randomString(12, '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ');

         var password = req.body.pass + salt;
         var enpass = MD5(password).toString();
         
         var user = `select userName from register where userName = '${req.body.user}'`;
         var active = `select userName from register where userName = '${req.body.user}' and status = 'inactive'`;
         var result = await con.query(user);
         var result1 = await con.query(active);
         if(result[0].length == 0){

               var insert = `insert into register (userName,password,salt,pin,status) values ('${req.body.user}','${enpass}','${salt}','${pin}','inactive')`;
               
               await con.query(insert);
               
               res.send({
                   user : req.body.user,
                   pin : pin,
                   alert : 'Register Successfully...'
               });
       }
       else{
           if(result1[0].length == 1){
                res.send({
                  alert : 'you already register but your account in inactive..',
                  user : req.body.user,
                  pin : pin
                });
           }
           else{
               res.send({
               alert : 'you already register please login...'
               });
           }
       }
   }
}
    catch(e){
      console.log(e);
    }
});
router.get('/active',async (req,res)=>{
   try{

       var user = req.query.user;
       var pin = req.query.pin;
       var select = `select * from register where userName = '${user}' and pin = '${pin}'`;
       var result1 = await con.query(select);
       if(result1[0].length == 0){
             res.send(
               'Activation link is wrong...'
             )
       }
       else{
           var active = `select * from register where userName = '${user}' and pin = '${pin}' and status = 'active'`;
           var result = await con.query(active);
           if(result[0].length == 1){
               res.send('your account is already activeted please go to login...');
           }
           else{
             var getime = `select created_at from register where userName = '${user}' and pin = '${pin}'`;
             var result2 =  await con.query(getime);
             var dataDate = new Date(`${result2[0][0].created_at}`);
             var currentTime = new Date();
             var diff = parseInt((currentTime - dataDate)/(1000*60));
             if(diff > 10){
                   var update = `update register set created_at = current_timestamp where userName = '${user}' and pin = '${pin}' and status = 'inactive'`;
                   var result = await con.query(update);
                   var alert = 'your link is expire but here is your new link to active your account'
                   res.render('reActive',{user,pin,alert});
             }
             else{
                 
                 var update = `update register set status = 'active' where userName = '${user}' and pin = '${pin}'`;
                 await con.query(update); 
                  res.send('Thank you for your kind response...  your account is Activated successfully...')
             }
               
       }
   }
}
   catch(e){
       
   }
})


router.get('/login',async (req,res)=>{
   try{
       res.render('login');
   }
   catch(e){
       console.log(e);
   }
})
router.post('/details',async(req,res)=>{
   try{
     var username = req.body.user;
     var pass = req.body.pass;
     var select = `select * from register where userName = '${username}' and status = 'active'`;
     var result = await con.query(select);
     if(result[0].length == 1){
         var password = MD5(pass + result[0][0].salt).toString();
         if(password != result[0][0].password){
             res.send({
                 alert : 'invalid username or password...'
               })
           }
           else{
               let jwtSecretKey = process.env.JWT_SECRET_KEY;
               let data = {
                   user : username
               }
               const token = jwt.sign(data, jwtSecretKey);
            
               res.cookie('token',token,{maxAge: 100000});
               res.send({
                   alert:'login successfully...'
               })
          }
     }
     else{
       var select = `select * from register where userName = '${username}'`;
       var result = await con.query(select);
       if(result[0].length == 0){
           res.send({
               alert : 'invalid username or password...'
           })
       }
       else{
               var update = `update register set created_at = current_timestamp  where userName = '${username}'`;
               await con.query(update); 
               var select = `select * from register where userName = '${req.body.user}'`
               var result = await con.query(select);
               res.send({ 
                   alert :'you already register but your account in inactive ,to active your account do registration again',
                   pin : result[0][0].pin,
                   user : req.body.user
               })
       }
     }

   }
   catch(e){
       console.log(e);
   }
})

router.get('/dash',async (req,res) =>{
   
   try {
       var token = req.cookies.token;
       if(token){
           let jwtSecretKey = process.env.JWT_SECRET_KEY;
           var verfiy = jwt.verify(token,jwtSecretKey);
           res.render('dash');
       }
       else{
           res.redirect('login');
       }
   } 
   catch (error) {
       // Access Denied
       return res.redirect('login');
   }
});

router.get('/password',async(req,res)=>{
   res.render('password');
})

router.post('/pass',async (req,res)=>{
   try{
       var select = `select * from register where userName = '${req.body.user}'`;
       var result = await con.query(select);

       if(result[0].length == 1){
           var update = `update register set password_change = current_timestamp where userName = '${req.body.user}'`;
           await con.query(update);
           res.send({
               user : req.body.user,
               alert : 'ok'
           }) 
       }
       else{
           res.send({
               alert : 'invaild user...'
           })
       }
   }
   catch(e){
       console.log(e);
   }
})
router.get('/pass',async (req,res)=>{
   try{
       var user = req.query.user;
       var getime = `select password_change from register where userName = '${user}'`;
       var result2 =  await con.query(getime);
       var dataDate = new Date(`${result2[0][0].password_change}`);
       var currentTime = new Date();
       var diff = parseInt((currentTime - dataDate)/(1000*60));
       if(diff > 10 ){
           res.send('password Change link is expire please try again to change password')
       }
       else{
           res.render('passchange'); 
       }
   }
   catch(e){
       console.log(e);
   }
})
router.post('/change',async(req,res)=>{
   try{
       var user = req.get('userName');

       var getime = `select password_change from register where userName = '${user}'`;
       var result2 =  await con.query(getime);
       var dataDate = new Date(`${result2[0][0].password_change}`);
       var currentTime = new Date();
       var diff = parseInt((currentTime - dataDate)/(1000*60));
       if(diff > 10){
           res.send({ alert :'password Change link is expire please try again to change password'})
       }
       else{
           var salt = randomString(4, '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ');
           var password = req.body.pass + salt;
           var enpass = MD5(password).toString();
           var update = `update register set password = '${enpass}',salt = '${salt}' where userName = '${user}'`;
           await con.query(update);
           res.send({
                   alert:'Password Change Successfully'
           })
       }
   }
   catch(e){
       console.log(e);
   }
});

function randomString(length, chars) {
   var result = '';
   for (var i = length; i > 0; --i) result += chars[Math.floor(Math.random() * chars.length)];
   return result;
}

module.exports = router;