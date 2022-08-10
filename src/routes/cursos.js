// ************ Require's ************
const express = require('express');
const router = express.Router();

// ************ Controller Require ************
const cursosControler = require('../controllers/cursosControler');

/* GET al the courses. */
router.get('/', cursosControler.cursos);

/* GET course information */
router.get('/detail/:id', cursosControler.detail);

module.exports = router;
