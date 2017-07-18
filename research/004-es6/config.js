'use strict';

const path      = require("path");

const web = path.resolve(__dirname, '..', '..');

module.exports = {
    web: web,
    roots: [ // where to search by require and files to watch
        path.resolve('app'),
        path.resolve('linked'),
        path.resolve('node_modules'),
        path.resolve(__dirname, '..', '..', 'app'),
    ],
    alias: {
        log: path.resolve(web, 'react', 'webpack', 'logw'),
    //     log     : path.resolve('./webpack/log'),
    //
    //     // https://facebook.github.io/react/docs/update.html g(Immutability Helpers)
    //     // https://www.npmjs.com/package/immutability-helper
    //     // https://github.com/seansfkelley/pure-render-decorator/commit/137f8a3c6999aba4688f81ad6c9f4b9f0a180de1
    //     // fbjs/lib/shallowEqual.js somewhere in node_modules from repository 'facebook/fbjs'
    //     // https://github.com/jurassix/react-immutable-render-mixin
    //     update  : 'immutability-helper',
    //     fb: 'fbjs/lib',
    },
    provide: { // see format: https://webpack.js.org/plugins/provide-plugin/
        log: 'log'
    },
    js: {
        entries: [ // looks for *.entry.{js|jsx} - watch only on files *.entry.{js|jsx}
            path.resolve('app'),
            // ...
        ],
        // output: path.resolve(web + '/js')
        output: path.resolve('dist')
    },
    // scss: {
    //     entries: [ // only this scss files will be transformed to css
    //         path.resolve('./src/scss/**/*.scss')
    //         // ...
    //     ],
    //     output: path.resolve(web + '/css')
    // }
}
