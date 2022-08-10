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
		var detailId = req.params.id
		Course.findAll({
			where: {
				id: detailId
			}
		})
		.then(course => {
			return res.render('cursos', { cursos: course });
		})
	}
}
module.exports = controller