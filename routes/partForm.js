const express = require("express");
const router = express.Router();
const ver = require('../middleware/verify');
const part = require('../controller/partForm');

router.get('/partForm',ver,part.partForm);
router.post('/partForm/form',ver,part.form);
// update...
router.get('/partForm/update',ver,part.update)

router.post('/partForm/update',ver,part.partUpdate);

router.post('/partForm/update/form',ver,part.formUpdate);

module.exports = router;