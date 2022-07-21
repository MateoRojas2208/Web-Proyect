const fs = require('fs');
const path = require('path');

const controller = {
    main: (req, res) => {
		res.render('cards', { title: 'Cartas' });
	},
	cards: (req, res) => {
		res.render('card', { title: 'Cartas' });
	}
    
}
module.exports = controller