const mix = require('laravel-mix');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */

// --> build .sass -> .css
.sass('resources/assets/sass/style.scss', 'public/assets/css/style.css')

// --> build .js -> .js
.copyDirectory('resources/assets/js','public/assets/js')

// --> copy folder resources/assets/img -> public/assets/img
.copyDirectory('resources/assets/img', 'public/assets/img')

// --> copy folder resources/assets/fonts -> public/assets/fonts
.copyDirectory('resources/assets/fonts', 'public/assets/fonts')

  