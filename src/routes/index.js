// ************ Require's ************
const express = require('express');
const router = express.Router();

// ************ Controller Require ************
const mainControler = require('../controllers/mainControler');
const cardsControler = require('../controllers/cardsControler');
/* GET home page. */
router.get('/', mainControler.home);
router.get('/cards', cardsControler.main);

module.exports = router;
