const { postcss } = require('svelte-preprocess');
// Consult https://www.snowpack.dev to learn about these options
module.exports = {
	extends: '@sveltejs/snowpack-config',
	mount: {
		'src/components': '/_components'
	},
	alias: {
		$components: './src/components'
	},
	plugins: [
		[
			'@snowpack/plugin-svelte',
			{
				compilerOptions: {
					hydratable: true
				},
				configFilePath: 'svelte.config.cjs',
			}
		],
		[
			"@snowpack/plugin-postcss"
		]
	]
};
