const express = require("express");
const router = express.Router();
const ver = require('../middleware/verify');
const fpsr = require('../controller/fpsr');

router.get('/',ver,fpsr.index)
router.get('/oprev/:Id/',ver,fpsr.prev)
router.get('/onext/:Id/',ver,fpsr.next)
router.get('/olast',ver,fpsr.last)
router.get('/report/:Id',ver,fpsr.report)

module.exports = router;