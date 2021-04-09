const forms = require('@tailwindcss/forms');
const colors = require('tailwindcss/colors');

module.exports = {
	mode: 'jit',
	purge: ['./src/**/*.{html,js,svelte,ts}'],
	theme: {
		extend: {
			colors: {
				rose: colors.rose
			}
		}
	},
	plugins: [forms]
};
