const express = require("express");
const router = express.Router();
const ver = require('../middleware/verify');
const jsonp = require('../controller/jsonPlaceHolder');
const { json } = require("node:stream/consumers");

router.get('/',ver,jsonp.index);
router.get('/view/:id',ver,jsonp.view);

module.exports = router;