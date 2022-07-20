// ************ Require's ************
const express = require('express');
const router = express.Router();

// ************ Controller Require ************
const mainController = require('../controllers/mainControler');
/* GET home page. */
router.get('/', mainController.home);
router.get('/cards', mainController.cards);

module.exports = router;
