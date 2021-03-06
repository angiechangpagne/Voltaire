const path = require('path');
module.exports = {
  entry: path.join(__dirname, 'src', 'index.jsx'),
  devServer: {
    contentBase: path.join(__dirname, 'src'),
  },
  output: {
    path: path.join(__dirname, 'dist'),
    filename: 'build.js'
  },
  module: {
    rules: [
      {
        test: /\.css$/,
        use: ['style-loader', 'css-loader'],
        include: [/src/,/node_modules/]
      }, {
        test: /\.jsx?$/,
        loader: 'babel-loader',
        exlclude: /node_modules/,
        query: {
          presets: ['es2015', 'react', 'es2016', 'stage-2']
        }
      }, {
        test: /\.json$/,
        loader: 'json-loader',
        include: '/build/contracts/'
      }
    ]
  }
}