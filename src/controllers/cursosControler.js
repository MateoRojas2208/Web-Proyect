const fs = require('fs');
const path = require('path');
const db = require('../../database/models');
const Course = db.Course;

const controller = {
    cursos: (req, res) => {
		Course.findAll()
			.then(course => {
				return res.render('cursos', {cursos: course});
			})
	},
	curso: (req, res) => {
		res.render('curso', { title: 'Cartas' });
	}
    
}
module.exports = controller