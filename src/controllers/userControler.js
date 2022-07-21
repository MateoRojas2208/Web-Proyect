const fs = require('fs');
const path = require('path');

const controller = {
    login: (req, res) => {
		res.render('login', { title: 'login' });
	},
	register: (req, res) => {
		res.render('register', { title: 'register' });
	},
	profile: (req, res) => {
		res.render('profile', { title: 'perfil' });
	}
}
module.exports = controller