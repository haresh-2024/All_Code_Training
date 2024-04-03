const express = require("express");
const router = express.Router();
const cookieParser = require('cookie-parser');
require('cookie-parser');
router.use(cookieParser());
const login  = require('../controller/login');

router.post('/register',login.register);
router.get('/active',login.active)
router.get('/login',login.login);
router.get('/password',login.pass)
router.post('/pass',login.post_pass)
router.get('/pass',login.get_pass)
router.post('/change',login.change);
router.post('/details',login.details);
router.get('/dash',login.dash);

module.exports = router;