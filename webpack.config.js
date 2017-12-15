const path = require('path');
const UglifyJSPlugin = require('uglifyjs-webpack-plugin');

module.exports = {
    entry: {
        item: './src/main/webapp/jsx/item.jsx'
    },
    output: {
        filename: '[name].js',
        path: path.resolve(__dirname, 'src/main/webapp/js/bundle')
    },
    resolve: {
        alias: {vue: 'vue/dist/vue.js'}
    },
    module: {
        loaders: [
            {
                test: /\.jsx?$/,
                use: [
                    {
                        loader: 'babel-loader',
                        options: {
                            presets: ['es2015'],
                        }
                    }
                ],
                exclude: /(node_modules|bower_components)/
            }
        ],
    },
    plugins: [
        new UglifyJSPlugin()
    ]
};
