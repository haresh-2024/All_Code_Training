const express = require("express");
const router = express.Router();
const ver = require('../middleware/verify');
const sqlRunner = require('../controller/sqlRunner')

router.get('/',ver,sqlRunner.index)
router.all('/main',ver,sqlRunner.main);
router.get('/ofirst/:sql',ver,sqlRunner.ofirst);
router.get('/oprev/:Id/:sql',ver,sqlRunner.oprev);
router.get('/onext/:Id/:sql',ver,sqlRunner.onext);
router.get('/olast/:sql',ver,sqlRunner.olast);
router.get('/onext/:Id/:sql',ver,sqlRunner.nextId);

module.exports = router;