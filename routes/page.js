const express = require("express");
const router = express.Router();
const ver = require('../middleware/verify');
const page = require('../controller/page');

router.get('/',ver,page.index);
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

module.exports = router;