Path = require('path');
HtmlWebpackPlugin = require('html-webpack-plugin');

module.exports = {
	context: Path.join(__dirname,'src'),
	entry: './index.coffee',
	output: {
		path: Path.resolve(__dirname,'build'),
		filename: '[name].js'
	},
	target: 'web',
	module:{
		rules: [{
			test: /\.coffee$/,
			loader: 'coffee-loader'
		}]
	},
	plugins: [
		new HtmlWebpackPlugin()
	],
	resolve:{
		extensions: ['.js','.coffee'],
		modules: ['node_modules','src']
	}
}
