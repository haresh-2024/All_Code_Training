const express = require("express");
const router = express.Router();
router.use(express.urlencoded({ extended: true }));
router.use(express.json())
const ver = require('../middleware/verify');
const form = require('../controller/formwithfile');

router.get('/',ver,form.index);
// for saving data into file...
router.post('/index',ver,form.save);
// for getting full details.
router.get('/fullDetails',ver,form.full);
// for 4 data show...
router.get('/lessDetails.ejs',ver,form.four)
// for delete the data.
router.get('/deleteDetails',ver,form.delt);
// this for get value from file.
router.get('/update',ver,form.read);
// this will update the value.
router.post('/fullDetails',ver,form.update);

module.exports = router;