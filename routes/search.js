const express = require("express");
const router = express.Router();
const ver = require('../middleware/verify');
const search = require('../controller/search')

router.get('/',ver,search.index);
router.post('/process',ver,search.process);

module.exports = router;