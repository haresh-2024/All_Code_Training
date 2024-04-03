const express = require("express");
const router = express.Router();
const ver = require('../middleware/verify');
const stateCity = require('../controller/cityState');

router.get('/',ver,stateCity.state);
router.post('/data',stateCity.city);

module.exports = router;