const express = require("express");
const router = express.Router();
const ver = require('../middleware/verify');
const ins = require('../controller/insertion');

router.get('/',ver,ins.index);
router.post('/form',ver,ins.insert)
// update
router.get('/update/:id',ver,ins.read);
router.post('/update/:id',ver,ins.update)

module.exports = router;