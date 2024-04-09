const express = require("express");
const router = express.Router();
router.use(express.urlencoded({ extended: true }));
router.use(express.json());
const cookieParser = require('cookie-parser');
require('cookie-parser');
router.use(cookieParser());

const ver = require('./middleware/verify');

const attend = require("./controller/attend");
const stateCity = require('./controller/cityState');
const component = require('./controller/component');
const form = require('./controller/formwithfile');
const fps = require('./controller/fps');
const fpsr = require('./controller/fpsr');
const ins = require('./controller/insertion');
const jsonp = require('./controller/jsonPlaceHolder');
const login  = require('./controller/login');
const page = require('./controller/page');
const part = require('./controller/partForm');
const search = require('./controller/search');
const timezone = require('./controller/timezone');
const timezonew = require('./controller/timezonew');
const sqlRunner = require('./controller/sqlRunner');


router.get('/attend',ver,attend.index);
router.get('/ofirst/:start/:end/:total',ver,attend.first);
router.get('/indexf/:start/:end/:total',ver,attend.page);
router.get('/oprev/:Id/:start/:end/:total',ver,attend.prev);
router.get('/onext/:Id/:start/:end/:total',ver,attend.next);
router.get('/olast/:start/:end/:total',ver,attend.last);
router.get('/indexf/:start/:end/:total/:page',ver,attend.no);

router.get('/state',ver,stateCity.state);
router.post('/data',stateCity.city);

router.get('/comp',ver,component.index);
router.get('/generate/:field/:control',ver,component.gen);
router.get('/generate/:field/:control/:select',ver,component.select);

router.get('/form',ver,form.index);
// for saving data into file...
router.post('/index',ver,form.save);
// for getting full details.
router.get('/fullDetails',ver,form.full);
// for 4 data show...
router.get('/lessDetails.ejs',ver,form.four)
// for delete the data.
router.get('/deleteDetails',ver,form.delt);
// this for get value from file.
router.get('/update',ver,form.read);
// this will update the value.
router.post('/fullDetails',ver,form.update);

// filter + pagination + search 
router.get('/fps',ver,fps.index);
// filter  
router.post('/order',ver,fps.filter);
router.post('/filter',ver,fps.search);

router.get('/fpsr',ver,fpsr.index)
router.get('/oprev/:Id/',ver,fpsr.prev)
router.get('/onext/:Id/',ver,fpsr.next)
router.get('/olast',ver,fpsr.last)
router.get('/report/:Id',ver,fpsr.report)

router.get('/sql',ver,sqlRunner.index)
router.all('/main',ver,sqlRunner.main);
router.get('/ofirst/:sql',ver,sqlRunner.ofirst);
router.get('/oprev/:Id/:sql',ver,sqlRunner.oprev);
router.get('/onext/:Id/:sql',ver,sqlRunner.onext);
router.get('/olast/:sql',ver,sqlRunner.olast);
router.get('/onext/:Id/:sql',ver,sqlRunner.nextId);

router.get('/insert',ver,ins.index);
router.get('/insertPage',ins.insertPage);
router.get('/show',ins.show);
router.post('/form',ver,ins.insert);
// update
router.get('/update/:id',ver,ins.read);
router.post('/update/:id',ver,ins.update)

router.get('/json',ver,jsonp.index);
router.get('/view/:id',ver,jsonp.view);

router.post('/register',login.register);
router.get('/active',login.active)
router.get('/login',login.login);
router.get('/password',login.pass)
router.post('/pass',login.post_pass)
router.get('/pass',login.get_pass)
router.post('/change',login.change);
router.post('/details',login.details);
router.get('/dash',login.dash);

router.get('/page',ver,page.index);
router.get('/last',ver,page.last);
router.get('/next/:Id',ver,page.next);
router.get('/prev/:Id',ver,page.prev);
// order by
router.get('/order/:cols/:order',ver,page.order);
router.get('/oprev/:Id/:cols/:order',ver,page.oprev);
router.get('/onext/:Id/:cols/:order',ver,page.onext);
router.get('/olast/:cols/:order',ver,page.olast);
router.get('/rows/:Id',ver,page.row);
router.get('/orow/:Id/:cols/:order',ver,page.orow);

router.get('/partForm',ver,part.partForm);
router.post('/partForm/form',ver,part.form);
// update...
router.get('/partForm/update',ver,part.update)
router.post('/partForm/update',ver,part.partUpdate);
router.post('/partForm/update/form',ver,part.formUpdate);

router.get('/search',ver,search.index);
router.post('/process',ver,search.process);

router.get('/timezone',ver,timezone.index)
router.get('/city',ver,timezone.city);

router.get('/timezonew',ver,timezonew.index);
router.get('/city',ver,timezonew.city);

router.get('/ehya',ver,async(req,res) =>{
    res.render('ehya/Index');
})
router.get('/hirex',ver,async(req,res) =>{
      res.render('Hirex/index');
})
router.get('/awan',ver,async(req,res) =>{
      res.render('awanhoster/index');
})
router.get('/views/Table-Game/',ver,async (req,res)=>{
      res.render('html/Game')
});
router.get('/views/Tic-Tac-Toe/',ver,async (req,res)=>{
      res.render('html/tic-tac-toe')
});
router.get('/views/Event/',ver,async (req,res)=>{
      res.render('html/event');
});
router.get('/views/Table/',ver,async (req,res)=>{
      res.render('html/dynamicTable');
});

router.get("/",async(req,res)=>{
    try{
        res.render('login/index');
    }
    catch(e){

    }
});



module.exports = router;