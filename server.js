const express = require('express')
const app = express();
require('dotenv').config();
app.set("view engine","ejs");
app.use(express.static('public'));
app.use(express.urlencoded({ extended: true }));
app.use(express.json());
const router = require("./routes");
const ver = require('./middleware/verify');

app.use('/',router);
app.get('*',(req,res)=>{ res.render('wrongUrl');});

app.listen(3000,()=>{
    console.log('server is running on port: 3000');
});