const express = require('express')
const app = express();
require('dotenv').config();
app.set("view engine","ejs");
app.use(express.static('public'));
app.use(express.urlencoded({ extended: true }));
app.use(express.json());
const ver = require('./middleware/verify');


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

const insert = require("./routes/insertion")
app.use('/insert',insert);

const state = require("./routes/cityState")
app.use('/state',state);

const jsonp = require("./routes/jsonPlaceHolder")
app.use('/json',jsonp);

// html file rendering.....
app.get('/ehya',ver,async(req,res) =>{
  res.render('ehya/Index');
})
app.get('/hirex',ver,async(req,res) =>{
    res.render('Hirex/index');
  })
app.get('/awan',ver,async(req,res) =>{
    res.render('awanhoster/index');
  })
app.get('/views/Table-Game/',ver,async (req,res)=>{
    res.render('html/Game')
});
app.get('/views/Tic-Tac-Toe/',ver,async (req,res)=>{
    res.render('html/tic-tac-toe')
});
app.get('/views/Event/',ver,async (req,res)=>{
    res.render('html/event');
});
app.get('/views/Table/',ver,async (req,res)=>{
    res.render('html/dynamicTable');
});

app.listen(3000);