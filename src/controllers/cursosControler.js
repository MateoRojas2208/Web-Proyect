const fs = require('fs');
const path = require('path');

const controller = {
    cursos: (req, res) => {
		res.render('cursos', { title: 'Cartas' });
	},
	curso: (req, res) => {
		res.render('curso', { title: 'Cartas' });
	}
    
}
module.exports = controller