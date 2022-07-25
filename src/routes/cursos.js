// ************ Require's ************
const express = require('express');
const router = express.Router();

// ************ Controller Require ************
const cursosControler = require('../controllers/cursosControler');

/* GET home page. */
router.get('/', cursosControler.cursos);
router.get('/curso', cursosControler.curso);

module.exports = router;