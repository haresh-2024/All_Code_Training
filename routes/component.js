const express = require("express");
const router = express.Router();
const ver = require('../middleware/verify');
const component = require('../controller/component');

router.get('/',ver,component.index);
router.get('/generate/:field/:control',ver,component.gen);
router.get('/generate/:field/:control/:select',ver,component.select);

module.exports = router;