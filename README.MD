[![Build Status](https://travis-ci.org/stopsopa/webpack3.svg?branch=master)](https://travis-ci.org/stopsopa/webpack3)

Don't feel overwhelmed by all files above, their all are there mainly for testing. I still promise that this configuration is simple.

installation:
-
 
 Follow instructions for all [releases](https://github.com/stopsopa/webpack3/releases).
    
        
then go to **react** folder configure **config.js** and run one of:
    
    npm run dev
    npm run prod
    sudo npm run server 0.0.0.0 80
    
or

    yarn dev
    yarn prod
    sudo yarn server 0.0.0.0 80
    
    
Syntax templates
-
- [es6](https://github.com/stopsopa/webpack3/blob/master/template.es6.js)
- [redux](https://github.com/stopsopa/webpack3/blob/redux/app/redux/004-counters/redux-counters.entry.js)
    
Features
-
- npm run dev
- npm run prod
- tests
- resolving urls in css/scss to jpe?g|gif|png|eot|woff2?|ttf|svg
- installator
- ExtractTextPlugin - extracting css to separate css file
- babel es2015, react, stage-0 presets, decorators-legacy
- integrated plugins ProvidePlugin, UglifyJSPlugin, CleanWebpackPlugin
