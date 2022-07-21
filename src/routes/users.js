// ************ Require's ************
var express = require('express');
var router = express.Router();


// ************ Controller Require ************
const userControler = require('../controllers/userControler');

/* GET users listing. */
router.get('/login', userControler.login);
router.get('/profile', userControler.profile);
router.get('/register', userControler.register);
module.exports = router;
