const express = require('express')
var app = express();
require('dotenv').config();
app.set("view engine","ejs");
app.use(express.static('public'));
app.use(express.urlencoded({ extended: true }));
app.use(express.json());
const { type } = require('os');
const { get } = require('http');


app.get('/',async (req,res)=>{
    
    try{
        res.render('index');
    }
    catch(e){
        console.log(e);
    }
})

const login = require("./routes/login");
app.use("/", login);

const partForm = require("./routes/partForm");
app.use('/',partForm)

const timezone = require("./routes/timezone")
app.use('/timezone',timezone);

const timezonew = require("./routes/timezonew")
app.use('/timezonew',timezonew);

const fps = require("./routes/fps")
app.use('/fps',fps);

const fpsr = require("./routes/fpsr")
app.use('/fpsr',fpsr);

const page = require("./routes/page")
app.use('/page',page);

const file = require("./routes/formwithfile")
app.use('/file',file);

const comp = require("./routes/component")
app.use('/comp',comp);

const sql = require("./routes/sqlRunner")
app.use('/sql',sql);

const attend = require("./routes/attend")
app.use('/attend',attend);

const search = require("./routes/search")
app.use('/search',search);

// file rendering.....

app.get('/views/Table-Game/',async (req,res)=>{
    res.render('html/Game')
});
app.get('/views/Tic-Tac-Toe/',async (req,res)=>{
    res.render('html/tic-tac-toe')
});
app.get('/views/Event/',async (req,res)=>{
    res.render('html/event');
});
app.get('/views/Table/',async (req,res)=>{
    res.render('html/dynamicTable');
});

app.get('/json',async (req,res)=>{
    try{
        res.render('jsonPlaceholder/json');
    }
    catch(e){
        console.log(e);
    }
})
app.get('/view/:id',async (req,res)=>{
    try{
        res.render('jsonPlaceholder/jsonview');
    }
    catch(e){
        console.log(e);
    }
})

app.get('/views/state',async (req,res)=>{
    
    try{
        res.render('state');
    }
    catch(e){
       console.log(e);
    }
})
app.post('/data',async (req,res)=>{
    
    try{
        var sql = `select * from state`;
        var result =  await con.query(sql);
        var sql1 = `select * from city`;
        var result1 = await con.query(sql1);
        res.send({
            state: result[0],
            city : result1[0]
        })
    }
    catch(e){
        console.log(e);
    }
});


app.listen(3000);