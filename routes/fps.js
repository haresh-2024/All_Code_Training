const express = require("express");
const router = express.Router();
const ver = require('../middleware/verify');
const fps = require('../controller/fps');

// filter + pagination + search 
router.get('/',ver,fps.index);

// filter  
router.post('/order',ver,fps.filter);

router.post('/filter',ver,fps.search);

module.exports = router;