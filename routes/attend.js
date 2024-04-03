const express = require("express");
const router = express.Router();
const ver = require('../middleware/verify');
const attend = require("../controller/attend");

router.get('/',ver,attend.index);
router.get('/ofirst/:start/:end/:total',ver,attend.first);
router.get('/indexf/:start/:end/:total',ver,attend.page);
router.get('/oprev/:Id/:start/:end/:total',ver,attend.prev);
router.get('/onext/:Id/:start/:end/:total',ver,attend.next);
router.get('/olast/:start/:end/:total',ver,attend.last);

module.exports = router;