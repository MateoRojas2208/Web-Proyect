const fs = require('fs');
const path = require('path');
const db = require('../../database/models');
const Course = db.Course;

const controller = {
	cursos: (req, res) => {
		Course.findAll()
			.then(course => {
				return res.render('cursos', { cursos: course });
			})
	},
	detail: (req, res) => {
		Course.findAll({
			where: {
				id: req.params.id
			}
		})
		.then(cour => {
			res.render('curso', { cursos: cour });
		})
	}
}
module.exports = controller