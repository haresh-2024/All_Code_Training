const express = require("express");
const router = express.Router();
const ver = require('../middleware/verify');
const timezone = require('../controller/timezone');
const { time } = require("console");

router.get('/',ver,timezone.index)
router.get('/city',ver,timezone.city);

module.exports = router;