const fs = require('fs');
const path = require('path');

const controller = {
    home: (req, res) => {
		res.render('home', { title: 'Cartas' });
	}
}
module.exports = controller