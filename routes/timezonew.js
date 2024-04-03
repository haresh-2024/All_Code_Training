const express = require("express");
const router = express.Router();
const ver = require('../middleware/verify');
const timezonew = require('../controller/timezonew');

router.get('/',ver,timezonew.index);
router.get('/city',ver,timezonew.city);
module.exports = router;